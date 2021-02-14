@extends('layouts.web')

@section('content')
    <section class="hero">
        <div class="content">
            <h3>Appname</h3>
            <h5>{{__('messages.welcome')}}</h5>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea enim at omnis ut eos, excepturi dolor.</p>
        </div>
    </section>

    <div class="container mt-4">
        <h2 class="text-uppercase mt-5 mb-4">Last Post</h2>

        <livewire:post-list>

        <!-- <div class="card post-card post-card-alt">
            <img src="img/sample-img0.jpg" alt="Sample">
            <div class="card-body p-md-5">
                <h3>Another interesting title</h3>
                <p>A labore temporibus dolor fugit laborum sed. Odit consequuntur, a temporibus voluptatibus doloremque blanditiis rem officiis praesentium?</p>
                <div class="custom-card-footer">
                    <a href="post-1.html" class="btn btn-sm btn-custom-light">Read more</a>
                </div>
            </div>
        </div>

        <div class="card post-card">
            <img src="img/sample-img0.jpg" alt="Sample">
            <div class="card-body p-md-5">
                <h3>A generic one</h3>
                <p>A labore temporibus dolor fugit laborum sed. Odit consequuntur, a temporibus voluptatibus doloremque blanditiis rem officiis praesentium?</p>
                <div class="custom-card-footer">
                    <a href="post-1.html" class="btn btn-sm btn-custom-light">Read more</a>
                </div>
            </div>
        </div> -->
    </div>
@endsection