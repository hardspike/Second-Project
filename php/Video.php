<?php

class Video {

    public $title;
    public $description;
    public $category;
    public $id;

    public function __construct($title, $description, $category, $id) {
        $this->title = $title;
        $this->description = $description;
        $this->category = $category;
        $this->id = $id;
    }

}
