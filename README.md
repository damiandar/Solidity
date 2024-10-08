# Curso Solidity

> mi address walet de metamask: 0x9D9E2DC392f18197a49bFb43DE99Fd55eE3dA921

## Clases
3. Funciones en solidity
4. Token, Standard (EIPS) ERC20 ERC721,Contrato verificado, truffle (hs 2)
5. Web3
6. test
7. test, withdraw



https://andersbrownworth.com/blockchain/block
https://www.tutorialspoint.com/solidity/

## Block Time

Es la cantidad de tiempo que toma ejecutar esos cientos de
miles de diferentes posibles hashes hasta encontrar el valor
que actualmente sea igual al que buscamos.

Aprox 15 segundos.

## Confirmation Time

Es el tiempo estimado de espera hasta tener la
certeza de que la transacción está confirmada.
Pero… Si ya escribió en un bloque, ¿no está
confirmada? No, puede que exista otra
ramificación en la Blockchain que termine
dejando afuera mi transacción. Por lo tanto, el
tiempo de confirmación va a considerar la
formación de bloques subsiguientes al de
nuestra transacción para tener la certeza
suficiente de que ya no existe posibilidad alguna
de cambio.

En el caso de Ethereum no hay un tiempo
definido. En el Whitepaper se habla de 7 bloques
(2 minutos aproximadamente), pero algunos
autores afirman que se debe esperar hasta unos
250. Termina siendo un tiempo cercano a una
hora.
¿Cómo podemos hacer para acelerar la
confirmación de nuestra transacción?
Pagando altos montos de comisión se logra
confirmar rápidamente la transacción. 

## Ethereum Networks

Mainnet: red pública y con valor de mercado
real.

● Testnet: red pública que simula el
funcionamiento de la Mainnet utilizada para
hacer pruebas. Existen varias Testnet como
Ropsten y Kovan.

Goerli es la red publica de ethereum.
goerli.etherscan

Mumbai es la red publica de polygom.


● Local: red privada utilizada para desarrollo,
que no tiene comunicación con la red pública y
sirve para trabajar en nuestro propio entorno.
Ethereum Networks

● Ganache: software que emula una red de
forma local que posee una interfaz gráfica
muy amigable.

● Develop o desarrollo: redes que funcionan en
memoria, para pruebas rápidas.

## Ethereum Wallet

● Una wallet (o billetera) es una aplicación que
nos permite acceder a nuestros balances en
Ether y/o tokens.

● En general, cuenta con unas palabras de
respaldo para poder desbloquear la cuenta en
caso de no recordar la clave privada.

● Permiten realizar y recibir transferencias hacia
o desde otras cuentas de Ethereum, solo con
compartir la dirección que es de acceso
público.

● Jamás se debe compartir la clave privada.

## MetaMask

● MetaMask es un módulo de Chrome que
usa una serie de nodos para realizar las
operaciones que necesitemos.

● Nos permite enviar y recibir: información, valores y  datos.

● Ether ilimitados.

## GAS

● Se puede decir que el GAS es el precio de las
transacciones en los contratos de Ethereum.

● Para hacer una analogía, sería como los
KiloWatts para contar el gasto de electricidad.
Es el costo por ejecutar algo.

● En teoría, el GAS sirve para desacoplar el
precio del Ether al de la ejecución de contratos
dado que el GAS tiene de por sí, un precio en
Ether.

● El precio dependerá de las operaciones que
ejecute.

● Al ejecutar una transacción sobre un contrato,
fijaremos el precio GAS que estamos
dispuestos a pagar. Cuanto más gas, mayor
será la prioridad de nuestra transacción en la
blockchain ya que los mineros tomarán
primero las transacciones más lucrativas.

● Supongamos que crear un contrato cuesta hoy
unos 32000 GAS. Si le ponemos un precio de
25 gwei, la transacción nos costará 0.008 ETH
(32000*25/10^8).

Existe un documento público
donde se indica el costo de GAS
según las operaciones realizadas.
El mismo se encuentra en: Gas Costs
from Yellow Paper -- EIP-150 Revision
(1e18248 - 2017-04-12).

## Fórmula del GAS total

● GAS TOTAL: cuánto se paga en total por enviar la tx.

● GAS: es la cantidad de cómputo que necesitamos para
ejecutar la tx.

● GAS Price: es el valor actual que se paga por unidad de
gas. Está relacionado al uso actual de la red. Varía
bastante rápido y es por eso que las billeteras lo
calculan cada 15/30 segundos.

## EIP-1159

Desde Agosto de 2021 se introdujo un cambio
en la red con respecto a las comisiones que se
deben pagar para enviar una transacción:

● Por un lado, los bloques pasaron de tener
tamaño fijo a tamaño variable, que se ajusta
en base al uso de la red.

● Ahora se debe determinar una “propina” al
minero que se denomina “Priority Fee” y que
sirve para incentivar que se incluya la tx en el
próximo bloque.

● Por otro lado, se estableció un precio base de
tx que viene determinado por el bloque (es
decir, el bloque establece el precio base de
una tx).

● Este precio de base se “quema” para controlar
la emisión de ethers.

● El costo total de la tx ahora depende de:

> Gas Price = Precio base + Priority Fee.

● El priority fee se suele determinar mediante
un valor máximo que es funciona como tope
y que se calcula como:

> Max Priority Fee = 2 * base + Priority Fee.

## BIP39 (frase semilla)

Es un estándar para la generación y la interpretación de la Frase de Recuperación en todos nuestros dispositivos. El estándar BIP39 es un estándar del sector utilizado por muchas otras billeteras deterministas jerárquicas. El tipo exacto de Semilla BIP39 que utilizan los dispositivos Ledger de forma predeterminada es una Frase mnemotécnica de 24 Palabras compuesta únicamente a partir de las 2048 Palabras de la lista de Palabras en inglés BIP39. Una Semilla Mnemotécnica de 24 Palabras BIP39 se genera de la siguiente manera:

● El dispositivo genera una secuencia de 256 bits aleatorios con el generador de números verdaderamente aleatorios (TRNG) integrado en el Elemento Seguro del dispositivo.

● Los primeros 8 bits del hash SHA256 de los 256 bits iniciales se incorporan al final, lo que nos da 264 bits.

● Los 264 bits se dividen en 24 grupos de 11 bits.

● Cada grupo de 11 bits se interpreta como un número en el rango de 0 a 2047, lo cual funciona como índice para la lista de Palabras BIP39, lo que genera 24 Palabras.


Es importante tener en cuenta que, a pesar de que es posible restaurar un dispositivo Ledger utilizando una Frase de Recuperación de 12, 18 o 24 Palabras, los dispositivos Ledger sólo generan Frases de recuperación de 24 Palabras. No crearán frases de 12 o 18 palabras.
El resultado de este proceso es que tu dispositivo generará una única Semilla mnemotécnica entre 2256 posibles Semillas mnemotécnicas (es decir, una entre 115 792 089 237 316 195 423 570 985 008 687 907 853 269 984 665 640 564 039 457 584 007 913 129 639 936 posibles semillas mnemotécnicas). 

Ten en cuenta que, si bien las primeras 23 Palabras son completamente aleatorias, la última Palabra se deriva de 3 bits aleatorios y 8 bits calculados del hash SHA256. Eso significa que la última Palabra puede actuar como una suma de verificación: si introduces una Semilla incorrecta en el dispositivo al tratar de recuperarlo, es posible que detecte que la Semilla introducida no es válida.

## KYC

Abreviatura de la frase en inglés “know your costumer” o “conoce a tu cliente”, se trata de una serie de exigencias regulatorias que se aplican a nivel mundial a empresas financieras —entre ellas los exchanges de criptomonedas— para facilitar la identificación de los clientes.

## Onboarding digital 

Es el proceso de identificación no presencial, que ayuda a los bancos a agilizar la incorporación de nuevos clientes y a los usuarios a realizar los trámites desde cualquier lugar. En el onboarding digital se vinculan clientes nuevos o antiguos a los servicios financieros de manera 100% digital.

# Transacciones

## Transaction Hash
Cuando realizamos una transacción
obtendremos un hash asociado. Recibir este
hash no implica que la transacción se haya
confirmado, sólo nos indica que se envió
correctamente, pero puede que al llegar al nodo
no se pueda realizar por algún motivo y se
descarte. Por ejemplo, si el saldo de mi cuenta
ya se gastó en otra transacción. Para ver el
estado de una transacción podemos buscar en
el explorer por medio del hash y ver si nuestra
transacción fue exitosa.

## Propiedades de la transacción
Toda transacción tiene múltiples propiedades. Entre
las más importantes, se encuentran las siguientes:
1. tx hash Identificador de la transacción.
2. To Address a donde estará llegando el Ether enviado.
3. Value Cantidad de Ether que se está enviando al ”To”.
4. Timestamp Fecha en la que se realizó la tx.
5. Transaction Fee Costo total en Ether pagado por el envío de la tx.

## Ethereum Virtual Machine

● La EVM es la que realiza la ejecución de
los Smart Contracts (ES COMO EL CLR o JVM).

● Al estar estandarizada, pueden existir
muchísimas implementaciones diferentes
siempre que soporten las operaciones
definidas. (por ej. GETH y Open Ethereum).

● La EVM trabaja en un lenguaje intermedio,
es decir, en Bytecode. Cuando se compila se genera un Bytecode (parecido a un assembler)

● Cuando programamos para Ethereum,
podemos hacerlo en diferentes lenguajes,
da igual ya que finalmente se compilarán a
Bytecode que es lo que realmente entiende la EVM.

Cuando compilamos un contrato en Solidity obtenemos.

### ABI

Interface utilizada para las dApps.
Son como los metodos publicados para interactuar con ella. Solo los metodos externos.

### Bytecode
Código de máquina que representa
las operaciones codificadas
previamente en Solidity. Es similar
a un assembler y es interpretado
por la EVM en tiempo de ejecución.

● Una vez almacenado en la blockchain, el
bytecode es inmutable.

● El bytecode no es legible por el humano, sin
embargo, puede realizarse cierta ingeniería
inversa sobre él.

● Al almacenarse en la blockchain, el bytecode
de un contrato es público y puede utilizarse
para validar si el código de un contrato es el
mismo que ya se subió en la blockchain.

● No importa qué lenguaje fue utilizado, para el
nodo lo que importa es el bytecode.

● El bytecode representa una serie de
operaciones (opcodes) que la EVM ejecutará
en forma secuencial.


Se generan dos bytcodes: uno es el que se genera cuando compilamos nuestro SC y otro que vamos a mandar a la maquina virtual para guardar nuestro bytecode este ultimo tiene el constructor por ej.
https://www.evm.codes/?fork=merge

El deploy es una transaccion en si.

# Encriptación 

Firmo con mi clave privada y el otro desencripta con mi clave publica.

Si se hace pasar por mi y quiere encriptar con una clave publica dara un error al tambien querer desencriptar con la publica.

ECDSA nos permitirá obtener una clave pública a partir de una clave privada. Con ambas claves ya podremos firmar transacciones y verificar luego las firmas.

https://libroblockchain.com/ecdsa/

ECDSA en su especificación secp256k1 (la usada en protocolos blockchain) para obtener la clave publica K a partir de una clave privada aleatoria k y de un punto dado G llamado punto base que siempre es el mismo. Este punto es público, se determina por el protocolo y no cambia nunca.

```

k * G = K
 
Clave privada * Punto base = Clave pública
```
ECDSA utiliza una serie de operaciones aritméticas especiales sobre puntos en una curva elíptica. Para ello se recurre a dos tipos de operaciones especiales: la suma y la multiplicación de puntos en la curva.

1. r  32 bytes (ephemeral random value)   r= K * G    k valor ramdon de cada firma (nonce) y g generador.
2. s  32 bytes Puntero que indica la ubicación donde fueron almacenados en el array r,s y v.
3. v   1 byte indica si pertenece a la parte inferior o superior de la curva.

## Pasos para generar la clave privada

1. Genero una clave privada(puedo utilizar un random), son 256 bits o 32 bytes o 64 nros hexadecimales.

2. Tomo esa clave y le aplico 
ECDSA, es una funcion criptografia de curva eliptica que te convierte de una clave privada a una publica.

3. Una vez que tenemos esa clave publica le aplicamos Keccak256, tomo los ultimos cuarenta bytes y me da la direccion ADDRESS.

https://emn178.github.io/online-tools/keccak_256.html

### Metamask 
Me da 12 palabras que equivale a la clave privada. Usa el protocolo BIP39 https://iancoleman.io/bip39/

Divide los bits en 12 o 24 y asigna palabras.

### Etherscan
Le puedo pasar mi direccion de metamask(tengo que decirle que busque en Goerli que es la de prueba que uso).


# Smart Contract
```html
//SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;
contract Storage {

    uint256 private number;

    /*
     * @dev Store value in variable
     * @param num value to store
     puede devolver public o external
     */
    function store(uint256 _num) external {
        number = _num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }
}
```

### Modificadores:
*External:* es para ver el metodo para consumir desde afuera. (podria ser public, pero si lo hago es visible de afuera y de adentro).

*View:* indica que la funcion es de lectura (no se cobra cuando la llaman).

*Payable:* me permite recibir dinero, sino solidity por default tiene una comprobación que no me lo permite.

Se pueden crear nuestros propios modifiers:
```
modifier onlyOwner(){
    require(owner==msg.sender,"no eres el owner");
    _;
}
```

consumo el modifier
```
function transferEtherOwner() external onlyOwner{

}
```
### Deploy
Cuando deployo me da una direccion.

Cuando se hace un Call Data (una llamada a la funcion del contrato) tengo que enviar una transaccion a la direccion del contrato junto con los datos.

Ej de call data:
0x6057361d00000000000..00b

- 6057361d es la funcion
- b es el dato enviado en hexa.


### Forma canonica
Tomamos la forma canonica de una función (nombre y tipo de los parametros). 
Ej:
**store(uint256)** esto lo pongo en keccak 256 y tomo los primeros 8 valores hexa y me da 6057361d.

### regiones de memoria 
- inmutables van en el storage
- memoria los no persistentes (puedo modificarlos)
- call data
- stack
  
> (ver bien)
- Call stack
- Stack
- Memory


> Ver bien: cuando mando ethers a un contrato por el constructor por ej. Donde se guardan los ethers?

1. send
2. transfer
3. call

# ERC20
Es un standar que permite transferir un valor de una billetera a otra, tiene una cantidad de decimales.
Es como mi propia moneda.

# ITO

Inicial token offering (es como un ICO)


# Truffle

Instalar:
> npm install -g truffle

Verificar la versión:

> truffle version

Crear proyecto:

> truffle init

### Archivos importantes: 
- contracts/: Directory for Solidity contracts
- migrations/: Directory for scriptable deployment files
- test/: Directory for test files for testing your application and contracts
- truffle-config.js: Truffle configuration file
  
> agrego la extension: truffle for vs code

En truffle-config.js configuro la red que voy a utilizar en este caso la localhost.

```
    development: {
      host: "127.0.0.1",     // Localhost (default: none)
      port: 8545,            // Standard Ethereum port (default: none)
      network_id: "*",       // Any network (default: none)
    },
```
Configuro la versión de compilación:
 solc: 
      version: "0.8.7" que es la que venimos trabajando


### Compilar

```
truffle compile
```

me genera una carpeta build con un json
Esta el abi, el bytecode y el deploy bytecode.

## deploy

Ir a la carpeta migrations y crear un archivo con la siguiente nomenclatura:

Cada una de las migraciones tiene un numero y guion bajo por ej: 2_contrato.js

```html
//requiero el nombre del contrato
var contrato1= artifacts.require("Storage");

module.exports=async function(deployer){
    await deployer.deploy(contrato1,"EdIToken","EDT",1000,18);
}
```

####  Antes de deployar me pide instalar ganache que es la testnet de mi maquina.
Ejecutar el comando:

```
ganache-cli

```

Me da algunas keys con 100 ethers cada una
```
truffle migrate --network development
```

Starting migrations...
======================
> Network name:    'development'
> Network id:      1674927291574
> Block gas limit: 30000000 (0x1c9c380)


2_Storage.js
============

   Deploying 'Storage'
   -------------------
   > transaction hash:    0x858d9dd384c0fb3c4f01a10a7aae6b8e92267522dfc807588226ab07602ede4f
   > Blocks: 0            Seconds: 0
   > contract address:    0xB7C742F11219Cd75Aded4829620DaF88CD70d5A6
   > block number:        1
   > block timestamp:     1674927381
   > account:             0xbEF7dE088275cfBABdcE4a19279CFe3A4A987697
   > balance:             999.999575840125
   > gas used:            125677 (0x1eaed)
   > gas price:           3.375 gwei
   > value sent:          0 ETH
   > total cost:          0.000424159875 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:      0.000424159875 ETH

Summary
=======
> Total deployments:   1
> Final cost:          0.000424159875 ETH

Puedo importar una de las cuentas de ganache en metamask para conectarlo con la red local ganache.

### Consola truffle
> Asegurarse que este corriendo ganache (ganache-cli)

```
truffle console --network development
```
Dentro de la consola:

```
const artefacto= artifacts.require("Storage")
```

artefacto.  (con tab me muestra las opciones)

## Formas de transferir

hay tres formas en las que uno puede enviar éter:

1- transfer() 
2- send()
3- call() 
## Transfer

transfer -> el contrato inteligente receptor debe tener definida una función *fallback* o, de lo contrario, la llamada de transferencia generará un error . Hay un límite de gas de 2300 gas , que es suficiente para completar la operación de transferencia. Está codificado para evitar *reentrancy attacks*



send -> Funciona de manera similar a la transferencia de llamadas y también tiene un límite de gas de 2300 gas . Devuelve el estado como un booleano.


## Funcion call
Es la forma recomendada de enviar ETH a un contrato inteligente. El argumento vacío activa la función de *fallback* de la dirección de recepción.
```
(bool enviado,datos de memoria) = _to.call{value: msg.value}("");
```

usando call , también se pueden activar otras funciones definidas en el contrato y enviar una cantidad fija de gas para ejecutar la función. 
El estado de la transacción se envía como un valor booleano y el valor de retorno se envía en la variable de datos.

```
(bool enviado, bytes de datos de memoria) = _to.call{gas :10000, value: msg.value}("func_signature(uint256 args)");
```
La función call es de bajo nivel y sirve para interactuar con otros contratos. Al crear un contrato inteligente de Solidity, el método "call" debe usarse cada vez que desee interactuar con otro contrato.
Si un usuario llama a un contrato el msg.sender==tx.origin, pero si un contrato llama a otro entonces en el 2do contrato el msg.sender!=tx.origin.
```
(bool error,bytes memory valor)=contrato.call(msg.data);
```
## Revert

Es muy similar a la función require. Sin embargo, no evalúa ninguna declaración y no depende de ningún estado o declaración. Presionar una declaración revert significa que se lanza una excepción, junto con el retorno del gas no utilizado, y vuelve a su estado original.

## Assert y Require

assert no permite enviar mensajes, cuando la condicion es falsa tiende a consumir todo el gas restante y revierte los cambios realizados.
require envio un mensaje, cuando la condicion es falsa se reembolsan todas las tarifas de gas restantes que ofrecimos pagar mas alla de que se reviertan todos los cambios.
## receive y fallback 

Las funciones para recibir dinero tienen que tener el modificador de payable. Pero si desde una billetera queremos mandar dinero a un contrato, él no tiene una función especifica para eso se crea la función receive(). Si además de mandar ether mandamos datos entonces lo recibe la función fallback().

Es una nueva palabra clave en Solidity 0.6.x que se usa como una función alternativa que solo puede recibir ether.

> receive() external payable— para datos de llamada vacíos (y cualquier valor)

> fallback() external payable— cuando ninguna otra función coincide (ni siquiera la función de recepción). Opcionalmente payable. Toma el msg.data

```
contract Example {
    // The receive function is executed when a contract receives Ether
    function receive() external payable {
        // code executed when the contract receives Ether
    }
    
    // The fallback function is executed when a contract is called without
    // specifying a function signature
    function () external payable {
        // code executed when the fallback function is called
    }
}
```
## LLamar a contrato con interfaces

```
interface coinfliper {
    function flip(bool _guess) external returns (bool);
}

contract CoinFlip {

  coinfliper public myContract; 

  constructor(address _addr) {
    myContract= coinfliper(_addr); 
  }

  function flip2() public {
    myContract.flip(true); // llamo al otro contratocontrato 
  }
```
## Withdraw

garantiza que no se realice una llamada de transferencia directa, lo que representa una amenaza para la seguridad. El siguiente contrato muestra el uso inseguro de la llamada de transferencia para enviar ether.

```
contract Test {
   address payable public richest;
   uint public mostSent;

   constructor() public payable {
      richest = msg.sender;
      mostSent = msg.value;
   }
   function becomeRichest() public payable returns (bool) {
      if (msg.value > mostSent) {
         // Insecure practice
         richest.transfer(msg.value);
         richest = msg.sender;
         mostSent = msg.value;
         return true;
      } else {
         return false;
      }
   }
}
```

El contrato anterior se puede convertir en un estado inutilizable al hacer que el más rico sea un contrato de falla en la función fallback. Cuando la función fallback falla, la función BecomeRichest() también falla y el contrato se atascará para siempre. Para mitigar este problema, podemos usar el patrón withdraw.

En el patrón withdraw, restableceremos el monto pendiente antes de cada transferencia. Se asegurará de que solo falle el contrato de la persona que llama.
