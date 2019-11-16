# 2. Modelos

Crea una estructura llamada ```MenuItem``` que contendrá las propiedades del archivo ```menu.json``` y una extra para la imagen. Para la propiedad de ```description``` usa otro nombre, pues éste nombre es usado en otro protocolo (```CustomStringConvertible```) y arréglalo en la enumeración ```CodingKeys```. 

Recuerda hacer que esta estructure conforme al protocolo ```Codable``` y que implemente la enumeración ```CodingKeys```. 

---

Endpoints: 

* **/menu**: regresa un arreglo llamado ```items```. Por lo que necesitarás crear otra estructura llamada ```MenuItems``` que tenga solamente esa propiedad: ```items: [MenuItem]```. 
* **/categories**: crea una estructura llamada ```Categories``` que conforme a ```Codable``` y tenga una propiedad que sea un arreglo de ```String``` llamado ```categories```. 

Finalmente, agrega una estructura nueva (en un archivo nuevo) llamada ```Order``` que conformará al protocolo ```Codable``` y tendrá como propiedad un arreglo de ```MenuItem```. Aunado a esto, esta estructurá deberá tener un inicializador de su propiedad ```menuItems:[MenuItem]``` con un valor de arreglo vacío por defecto.

```swift
struct A {
	  var foo: [Int]
		
  	init(foo: [Int] = []) {
      	self.foo = foo
    }
}
```

