<div class="bg-white overflow-hidden shadow-xl sm:rounded-lg px-4 py-4">
    @if (session()->has('message'))
    <div class="bg-teal-100 border-t-4 border-teal-500 rounded-b text-teal-900 px-4 py-3 shadow-md my-3" role="alert">
        <div class="flex">
            <div>
                <p class="text-sm">{{ session('message') }}</p>
            </div>
        </div>
    </div>
    @endif
    <button wire:click="create()"
        class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded my-3">Create New Survey</button>
    @if($isOpen)
        @include('livewire.create_survey')
        <script>
            setTimeout(function() {
                [...document.querySelectorAll('a')].filter(e=>e.href.includes('page')).forEach(e=> {
                    e.addEventListener('click', function(e) {
                        e.currentTarget.href = '/dashboard/surveys?page=' + e.currentTarget.href.split('=')[1];
                    });
                });
            }, 1000);
        </script>
    @endif

    <table class="table-fixed w-full">
        <thead>
            <tr class="bg-gray-100">
                <th class="px-4 py-2 w-20">ID</th>
                <th class="px-4 py-2">Name</th>
                <th class="px-4 py-2">Aviable from</th>
                <th class="px-4 py-2">Aviable to</th>
                <th class="px-4 py-2">Enabled</th>
                <th class="px-4 py-2">Public</th>
                <th class="px-4 py-2">Created at</th>
                <th class="px-4 py-2">Created by</th>
                <th class="px-4 py-2">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach($surveys as $survey)
            <tr>
                <td class="border px-4 py-2">{{ $survey->id }}</td>
                <td class="border px-4 py-2">{{ $survey->name }}</td>
                <td class="border px-4 py-2">{{ $survey->aviableFrom }}</td>
                <td class="border px-4 py-2">{{ $survey->aviableTo }}</td>
                <td class="border px-4 py-2">{{ $survey->enabled }}</td>
                <td class="border px-4 py-2">{{ $survey->public }}</td>
                <td class="border px-4 py-2">{{ $survey->created_at->diffForHumans() }}</td>
                <td class="border px-4 py-2">{{ $survey->user->name }}</td>
                <td class="border px-2 py-1">
                    <button wire:click="edit({{ $survey->id }})"
                        class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-1 px-2 rounded">Edit</button>
                    <button wire:click="delete({{ $survey->id }})"
                        class="bg-red-500 hover:bg-red-700 text-white font-bold py-1 px-2 rounded">Delete</button>
                    <br/>
                    <a href="/dashboard/survey/{{$survey->slug}}" class="bg-green-500 hover:bg-green-700 text-white font-bold py-1 px-2 rounded mt-3" style="margin-top: 2em;">View</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    <div style="margin-top:1em"></div>
    {!! $surveys->links() !!}
</div>