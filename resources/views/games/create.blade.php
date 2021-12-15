@extends('layouts.app')
@section('title_page', 'Crear Juego')

@section('content')

<a href="{{ route('games.index') }}" class="btn btn-secondary">Volver a Juegos</a>
<hr>

@if ($errors->all())
<div class="alert alert-danger" role="alert">
    @foreach ($errors->all() as $error)
    <strong>{{ $error }}</strong>
    <br>
    @endforeach
</div>
@endif
<form action="{{ route('games.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <input type="hidden" name="status" value="1">
    <div class="form-group">
        <label for="game_id">ID</label>
        <input type="number" class="form-control" name="game_id" id="game_id" aria-describedby="help-game_id"
            placeholder="Id del juego" value="{{ old('game_id')}}">
        <small id="help-game_id" class="form-text text-muted">ID Juego</small>
    </div>
    <div class="form-group">
        <label for="name">Nombre</label>
        <input type="text" class="form-control" name="name" id="name" aria-describedby="help-name"
            placeholder="Nombre del juego" value="{{ old('name') }}">
        <small id="help-name" class="form-text text-muted">Nombre Juego</small>
    </div>
    <div class="form-group">
        <label for="link">Url</label>
        <input type="url" class="form-control" name="link" id="link" aria-describedby="help-link"
            placeholder="Url del juego" value="{{ old('link') }}">
        <small id="help-link" class="form-text text-muted">Url Juego</small>
    </div>
    <div class="form-group">
        <label for="description">Descripción</label>
        <textarea class="form-control" name="description" id="description" rows="3">{{ old('description') }}</textarea>
    </div>
    <div class="form-group">
        <label for="image">Imagen Url</label>
        <input type="url" class="form-control" name="image" id="image" aria-describedby="help-image"
            placeholder="Imagen del juego" value="{{ old('image') }}">
        <small id="help-image" class="form-text text-muted">Imagen juego</small>
    </div>
    <button type="submit" class="btn btn-success">Crear</button>
</form>


@endsection