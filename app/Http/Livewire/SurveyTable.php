<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Survey;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class SurveyTable extends Component
{
    public $survey, $name, $config, $enabled, $public, $responseLimit, $aviableFrom, $aviableTo, $survey_id;
    public $isOpen = 0;

    public function render()
    {
        return view('livewire.survey-table', [
            'surveys' => Survey::latest()->with('user')->paginate(7)
        ]);
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
        $this->name = '';
        $this->config = '[]';
        $this->survey_id = '';
        $this->enabled = FALSE;
        $this->public = '';
        $this->responseLimit = '';
        $this->aviableFrom = date('Y-m-d H:i:s', time());
        $this->aviableTo = date('Y-m-d H:i:s', time());
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function store()
    {
        $this->validate([
            'name' => 'required',
            'config' => 'required',
        ]);

        $slug = SlugService::createSlug(Survey::class, 'slug', $this->name);

        Survey::updateOrCreate(['id' => $this->survey_id], [
            'name' => $this->name,
            'slug' => $slug,
            'config' => $this->config,
            'enabled' => $this->enabled,
            'public' => $this->public,
            'responseLimit' => $this->responseLimit,
            'aviableFrom' => $this->aviableFrom,
            'aviableTo' => $this->aviableTo,
            'user_id' => auth()->id(),
            'image'=>'#',
        ]);

        session()->flash('message', 
            $this->survey_id ? 'Survey Updated Successfully.' : 'Survey Created Successfully.');

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
        $survey = Survey::findOrFail($id);
        $this->survey_id = $id;
        $this->name = $survey->name;
        $this->config = $survey->config;
        $this->enabled=$survey->enabled;
        $this->public=$survey->public;
        $this->responseLimit=$survey->responseLimit;
        $this->aviableFrom=$survey->aviableFrom;
        $this->aviableTo=$survey->aviableTo;
        $this->openModal();
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function delete($id)
    {
        Survey::find($id)->delete();
        session()->flash('message', 'Survey Deleted Successfully.');
    }
}

