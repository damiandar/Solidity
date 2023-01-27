# Solidity

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

● Nos permite enviar y recibir información.

● Nos permite enviar y recibir valor.

● Nos permite enviar y recibir datos.

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

○ Gas Price = Precio base + Priority Fee.

● El priority fee se suele determinar mediante
un valor máximo que es funciona como tope
y que se calcula como:

○ Max Priority Fee = 2 * base + Priority Fee.

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
tx hash Identificador de la transacción.
To Address a donde estará llegando el Ether enviado.
Value Cantidad de Ether que se está enviando al ”To”.
Timestamp Fecha en la que se realizó la tx.
Transaction Fee Costo total en Ether pagado por el envío de la tx.

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

ABI

Interface utilizada para las dApps.
Son como los metodos publicados para interactuar con ella. Solo los metodos externos.

Bytecode
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


Se generan dos bytcodes, uno es el que se genera cuando compilamos nuestro SC y otro que vamos a mandar a la maquina virtual para guardar nuestro bytecode este ultimo tiene el constructor por ej.
https://www.evm.codes/?fork=merge

# Encriptacion

Firmo con mi clave privada y el otro desencripta con mi clave publica.

Si se hace pasar por mi y quiere encriptar con una clave publica dara un error al tambien querer desencriptar con la publica.

r
s
v

## Generacion clave privada

Genero una clave privada(puedo utilizar un random), son 256 bits o 32 bytes o 64 nros hexadecimales.

Tomo esa clave y le aplico 
ECDSA, es una funcion criptografia de curva eliptica que te convierte de una clave privada a una publica.

Una vez que tenemos esa clave publica le aplicamos Keccak256, tomo los ultimos cuarenta bytes y me da la direccion ADDRESS.
https://emn178.github.io/online-tools/keccak_256.html

Metamask me da 12 palabras que equivale a la clave privada. Usa el protocolo BIP39 https://iancoleman.io/bip39/
Divide los bits en 12 o 24 y asigna palabras.

Etherscan
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