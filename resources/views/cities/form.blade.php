<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Formulario Clientes</title>
</head>
<body>
    <h1>{{$modo}} ciudad</h1>
    
    @if(count($errors)>0)

    <div class="alert alert-danger" role="alert">
        <ul>
            @foreach($errors->all() as $error)
                <li>
                    {{ $error }}
                </li>
            @endforeach
        </ul>
    </div>
        
    @endif
    <div class="form-group">
        <label for="cod"> cod</label>
        <input type=text class="form-control" name="cod" value="{{isset($cities->cod)?$cities->cod:''}}" id="cod">
        <br>
    </div>
    <div class="form-group">
        <label for="name"> name</label>
        <input type=text class="form-control" name="name" value="{{isset($cities->name)?$cities->name:''}}" id="name">
        <br>
    </div>
    <input class="btn btn-success" type="submit" value="Guardar Datos">
    <a class="btn btn-primary" href="{{url('cities/')}}"> Volver </a>

</body>
</html>