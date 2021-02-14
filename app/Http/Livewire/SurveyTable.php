<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Survey;

class SurveyTable extends Component
{
    public $survey, $name, $config, $enabled, $public, $responseLimit, $aviableFrom, $aviableTo, $survey_id;
    public $isOpen = 0;

    public function render()
    {
        return view('livewire.survey-table', [
            'surveys' => Survey::latest()->with('user')->get()
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
        $this->config = '';
        $this->survey_id = '';
        $this->enabled = '';
        $this->public = '';
        $this->responseLimit = '';
        $this->aviableFrom = '';
        $this->aviableTo = '';
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
   
        Survey::updateOrCreate(['id' => $this->survey_id], [
            'name' => $this->name,
            'config' => $this->config,
            'user_id' => auth()->id()
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

