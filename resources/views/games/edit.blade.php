@extends('layouts.app')
@section('title_page', $game->name)
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

<form action="{{ route('games.destroy', ['game' => $game]) }}" method="POST">
    @csrf
    @method('DELETE')
    <button type="submit" class="btn btn-danger">Eliminar Juego</button>
</form>
<hr>
<form action="{{ route('games.update',['game' => $game]) }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <div class="form-group">
        <label for="game_id">ID</label>
        <input type="number" class="form-control" name="game_id" id="game_id" aria-describedby="help-game_id"
            placeholder="Id del juego" value="{{ old('game_id', $game->game_id) }}">
        <small id="help-game_id" class="form-text text-muted">ID Juego</small>
    </div>
    <div class="form-group">
        <label for="name">Nombre</label>
        <input type="text" class="form-control" name="name" id="name" aria-describedby="help-name"
            placeholder="Nombre del juego" value="{{ old('name', $game->name) }}">
        <small id="help-name" class="form-text text-muted">Nombre Juego</small>
    </div>
    <div class="form-group">
        <label for="link">Url</label>
        <input type="url" class="form-control" name="link" id="link" aria-describedby="help-link"
            placeholder="Url del juego" value="{{ old('link', $game->link) }} ">
        <small id="help-link" class="form-text text-muted">Url Juego</small>
    </div>
    <div class="form-group">
        <label for="description">Descripción</label>
        <textarea class="form-control" name="description" id="description"
            rows="3">{{ old('description', $game->description) }}</textarea>
    </div>
    <div class="form-group">
        <label for="status">Estado</label>
        <select class="form-control" name="status" id="status">
            <option disabled>Seleccione</option>
            <option value="1" {!! old('status', $game->status) ? 'selected' : '' !!}>Activo</option>
            <option value="0" {!! old('status', $game->status) ? '' : 'selected' !!}>Inactivo</option>
        </select>
    </div>
    <div class="form-group">
        <label for="image">Imagen Url</label>
        <input type="url" class="form-control" name="image" id="image" aria-describedby="help-image"
            placeholder="Imagen del juego" value="{{ old('image', $game->image) }}">
        <small id="help-image" class="form-text text-muted">Imagen juego</small>
    </div>
    <button type="submit" class="btn btn-success">Actualizar</button>
</form>

@endsection