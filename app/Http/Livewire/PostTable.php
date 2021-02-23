<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Post;
use illuminate\Http\Request;

class PostTable extends Component
{
    public $blogs, $title, $content, $post_id;
    public $isOpen = 0;
    public $filter;

    public function mount(Request $request)
    {
        $this->filter = $request->query('filter');
    }

    public function render()
    {

        if (!empty($this->filter)) {
            $posts = Post::sortable()
                ->where('post.name', 'like', '%'.$this->filter.'%')->get();
        } else {
            $posts = Post::sortable()->get();
            echo 'empty';
        }
        return view('livewire.post-table')->with('posts', $posts)->with('filter', $this->filter);

        // return view('livewire.post-table', [
        //     'posts' => Post::sortable()->get()
        //     // 'posts' => Post::latest()->with('user')->get()
        // ]);
    }

    public function indexFiltering(Request $request)
    {
        $filter = $request->query('filter');
        if (!empty($filter)) {
            $posts = Post::sortable()
                ->where('post.name', 'like', '%'.$filter.'%')
                ->get();
        } else {
            $posts = Post::sortable()
                ->get();
        }
        return view('livewire.post-table')->with('posts', $posts)->with('filter', $filter);
    }

    public function create()
    {
        $this->resetInputFields();
        $this->openModal();
    }
  
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function openModal()
    {
        $this->isOpen = true;
    }
  
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function closeModal()
    {
        $this->isOpen = false;
    }
  
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    private function resetInputFields(){
        $this->title = '';
        $this->content = '';
        $this->post_id = '';
    }
     
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function store()
    {
        $this->validate([
            'title' => 'required',
            'content' => 'required',
        ]);
   
        Post::updateOrCreate(['id' => $this->post_id], [
            'title' => $this->title,
            'content' => $this->content,
            'user_id' => auth()->id()
        ]);
  
        session()->flash('message', 
            $this->post_id ? 'Post Updated Successfully.' : 'Post Created Successfully.');
  
        $this->closeModal();
        $this->resetInputFields();
    }
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function edit($id)
    {
        $post = Post::findOrFail($id);
        $this->post_id = $id;
        $this->title = $post->name;
        $this->content = $post->content;
    
        $this->openModal();
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function delete($id)
    {
        Post::find($id)->delete();
        session()->flash('message', 'Post Deleted Successfully.');
    }
}
