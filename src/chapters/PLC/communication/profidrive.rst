*****************
PROFIdrive
*****************

Which terminology do you use for cyclic PROFIdrive communication?

    Entry
    Associated product(s)


What is PROFIdrive:
PROFIdrive is a device profile developed by drive manufacturers to provide manufacturer-neutral standardization of the PROFIBUS interface of drives and thus minimize integration and commissioning time and effort. The FAQ describes the terminology of the common data objects of cyclic communication between controller and drive.

Cyclic data transmission messages
Cyclic data transmission messages have the following basic structure.


Fig. 1

 

The core consists of user data (PPO)

Parameter process data object (PPO)
The structure of the user data for the cyclic channel is defined in the PROFIdrive Profile version V2.0 and designated as Parameter Process data Object (PPO). Using the PPO the master (controller) accesses the slaves (drives) cyclically. The PPO is divided into two areas: PKW area and PZD area. The dividing into the two areas achieves decoupling in time. The PKW area is usually processed slower than the PZD area.


Fig. 2

 

PKW area
With the parameter ID value (Parameter-Kennung-Wert (PKW)) you can monitor and/or change any parameter in the converter. For example, you can read out faults or minimum/maximum limits. The PKW area consists of at least for words, the parameter ID (Parameterkennung (PKE)), the parameter index (IND) and the parameter value (Parameterwert (PWE)) that occupies two words. There are also PPO types that do not have a PKW area.


Fig. 3

 

 
Parameter
attributes 	Explanation
PKE 	

The parameter ID is always a 16-bit value and consists of the task or reply ID (Auftrags- bzw. Antwortkennung (AK)), a toggle bit for spontaneous messages (SPM) and the parameternumber (PNU). It has the following structure.


Fig. 4

 

    AK
    The task/reply ID comprises bits 12 to 15. In the task message (Master → Converter) AK is a task ID and a reply ID in a reply message (Converter → Master). In the PROFIdrive Profile version V2.0 the task IDs 0 to 9 are defined (e.g. 0 = no task, 1 = request parameter value, 2 = change parameter value [word] etc.). More converter-specific task IDs are possible.
    Refer to the relevant manual to see which task/reply ID your drive supports.

    SPM
    Bit 11 serves as a toggle bit for spontaneous messages for transmitting active parameters.

    PNU
    Bits 0 to 10 contain the number of the desired converter parameter.

IND 	

In cyclic communication the parameter index contains the subindex (also array subindex) in the higher value byte. The lower value byte is not defined in PROFIdrive Profile version V2.0 and can be assigned according to the converter used.


Fig. 5

 

When editing parameters, the subindex transmits the required index of an indexed parameter. When editing a description element (AK = 4), the number of the desired element is transmitted.
PWE 	

The parameter value is always transmitted as a double-word. Only one parameter value can ever be transmitted in a PPO message.


Fig. 6

 

A 32-bit parameter value consists of PWE1 (high value word, 3rd word) and PWE2 (low value word, 4th word). A 16-bit parameter value is transmitted in PWE2. In this case you must set PWE1 to 0 in the PROFIBUS-DP master.

PZD area
In the process data area (Prozessdatenbereich (PZD)) both control words and setpoint values (Master → Converter), and also status words and actual values (Converter → Master) are transferred. Unlike parameter transfer in the PKW area, in which the parameters to be transferred are defined in the message, the process variables to be transferred in the PZD area are defined by the PPO type or the converter. Likewise, the amount of process data depends on the PPO type or converter.


Fig. 7

 

Some mandatory PZDs have a predefined names:
 
STW:  	(Steuerwort) Control word 1 (usually on PZD 1)
HSW: 	(Hauptsollwert) Main setpoint (usually on PZD 2)
ZSW: 	(Zustandswort) Status word 1 (usually on PZD 1)
HIW: 	(Hauptistwert) Main actual value (usually on PZD 2)

After PROFIdrive Profile version V2.0 there are five PKW areas predefined, which differ with regard to the presence of the PKW area or the length of the PZD area.


Fig. 8

 

In PROFIdrive Profile version V3.0 you can also freely configure the cyclic data in addition to the predefined PPO types. For example, you can configure four PZD words in MICROMASTER 420 and eight in MICROMASTER 440/430. A PKW area can be configured regardless of the amount of process data. 