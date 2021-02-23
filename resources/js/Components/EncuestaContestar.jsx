import React, { useState, useRef } from 'react'
import { Select } from './Elementos/Select';
import { Titulo } from './Elementos/Titulo';
import { TextArea } from './Elementos/TextArea';

let key = -1, ckey = 0, rkey = 0;
let Respuestas = [];

export const EncuestaContestar = () => {

    const [Show, setShow] = useState("Hide");
    const RespuestasRef = useRef(new Array());

    let Preguntas = [{
        "type": "checkbox",
        "label": "Required, one or all responses can be checked",
        "options": [
            "opt 1",
            "opt 2",
            "opt 3",
            "opt 4"
        ],
        "required": true
    },
    {
        "type": "text",
        "label": "Please type some text(textarea)",
        "required": false
    },
    {
        "type": "number",
        "label": "Give me a number(required)",
        "required": true
    },
    {
        "type": "radio",
        "label": "With radio buttons. (pick only one obviously)",
        "options": [
            "This option",
            "Or this one",
            "Or maybe this"
        ],
        "required": false
    },
    {
        "type": "text",
        "label": "Do you? . . .",
        "required": true
    }];

    let Respuesta = {
        Pregunta: "",
        Respuesta: ""
    };

    let Elemento;
    const GetQuestion = pregunta => {
        key++;
        switch (pregunta.type) {
            case "checkbox":
                Elemento = (
                    <div className="Contestar__element Error" key={key}>
                        <h2>{pregunta.label}</h2>
                        <div id="checkbox" ref={(element) => RespuestasRef.current.push(element)} className="Contestar__element__option" required={pregunta.required}>
                            {
                                pregunta.options.map(a => {
                                    ckey++;
                                    return (
                                        <div id={pregunta.label} key={"c" + ckey} className="">
                                            <input type="checkbox" id={a} name="radio" value={a} />
                                            <label>{a}</label>
                                        </div>
                                    )
                                })
                            }
                        </div>
                    </div>
                );

                Respuesta = {
                    Pregunta: pregunta.label,
                    Respuesta: RespuestasRef[key]
                }

                SaveRespuesta()
                return Elemento;
            case "number":
                Elemento = (
                    <div className="Contestar__element" key={key}>
                        <h2>{pregunta.label}</h2>
                        <input id="number" ref={(element) => RespuestasRef.current.push(element)} type="number" className="number" required={pregunta.required} />
                    </div>
                )

                Respuesta = {
                    Pregunta: pregunta.label,
                    Respuesta: RespuestasRef[key]
                }

                SaveRespuesta()
                return Elemento;
            case "text":
                Elemento = (
                    <div className="Contestar__element" key={key}>
                        <h2>{pregunta.label}</h2>
                        <input id="text" ref={(element) => RespuestasRef.current.push(element)} className="Contestar__element__input" type="text" required={pregunta.required} />
                    </div>
                )

                Respuesta = {
                    Pregunta: pregunta.label,
                    Respuesta: RespuestasRef[key]
                }

                SaveRespuesta()
                return Elemento;
            case "radio":
                Elemento = (
                    <div className="Contestar__element" key={key}>
                        <h2>{pregunta.label}</h2>
                        <div id="radio" ref={(element) => RespuestasRef.current.push(element)} className="Contestar__element__option" required={pregunta.required}>
                            {
                                pregunta.options.map(a => {
                                    rkey++;
                                    return (
                                        <div id={pregunta.label} key={"r" + rkey} className="">
                                            <input type="radio" id={a} name="radio" value={a} />
                                            <label>{a}</label>
                                        </div>
                                    )
                                })
                            }
                        </div>
                    </div>
                )

                Respuesta = {
                    Pregunta: pregunta.label,
                    Respuesta: RespuestasRef[key]
                }

                SaveRespuesta()
                return Elemento;
            default:
                break;
        }
    }

    const SaveRespuesta = () => {
        Respuesta = {
            Pregunta: "",
            Respuesta: ""
        };
    }

    const p = () => {
        let Pregunta = {
            Titulo: "",
            Respuesta: []
        }
        console.log(RespuestasRef.current)
        RespuestasRef.current.map(a => {
            Pregunta = {
                Titulo: "",
                Respuesta: []
            }

            let vacio = false;
            switch (a.id) {
                case "number":
                    if (a.required === false && a.value !== "") {
                        Pregunta.Titulo = a.parentElement.children[0].innerText;
                        Pregunta.Respuesta.push(a.value)
                    }
                    if (a.required === false && a.value === "") {
                        // Hacer algo en caso de que la pregunta sea requerida pero no se halla completado
                        alert("Pregunta requerida")
                    }
                    if (a.value === "") {
                        vacio = true
                    }
                    break;
                case "text":
                    if (a.required === false && a.value !== "") {
                        Pregunta.Titulo = a.parentElement.children[0].innerText;
                        Pregunta.Respuesta.push(a.value)
                    }
                    if (a.required === false && a.value === "") {
                        // Hacer algo en caso de que la pregunta sea requerida pero no se halla completado
                        alert("Pregunta requerida")
                    }
                    if (a.value === "") {
                        vacio = true
                    }
                    break;
                case "checkbox":
                    Pregunta.Titulo = a.parentElement.children[0].innerText;

                    for (let i = 0; i < a.children.length; i++) {
                        const e = a.children[i];
                        if (e.children[0].checked === false && Pregunta.Respuesta.length === 0) {
                            vacio = true
                        }
                        else {
                            let resp = {
                                opcion: e.children[1].innerText,
                                checked: e.children[0].checked
                            }
                            Pregunta.Respuesta.push(resp)
                            vacio = false
                        }
                    }

                    if (a.required === true && Pregunta.Respuesta.length === 0) {
                        // Hacer algo en caso de que la pregunta sea requerida pero no se halla completado
                        alert("Pregunta requerida")
                    }
                    break;
                case "radio":
                    Pregunta.Titulo = a.parentElement.children[0].innerText;

                    for (let i = 0; i < a.children.length; i++) {
                        const e = a.children[i];
                        if (e.children[0].checked === false && Pregunta.Respuesta.length === 0) {
                            vacio = true
                        }
                        else {
                            let resp = {
                                opcion: e.children[1].innerText,
                                checked: e.children[0].checked
                            }
                            Pregunta.Respuesta.push(resp)
                            vacio = false
                        }
                    }

                    if (a.required === true && Pregunta.Respuesta.length === 0) {
                        // Hacer algo en caso de que la pregunta sea requerida pero no se halla completado
                        alert("Pregunta requerida")
                    }
                    break;
                default:
                    break;
            }
            if (!vacio) {
                console.log(a.id)
                Respuestas.push(Pregunta)
            }
        })
        console.log(Respuestas)
    }

    return (
        <div className="Contestar__main">
            {
                Preguntas.map(a => {
                    return GetQuestion(a)
                })
            }
            <div>
                <button onClick={p}>Finalizar</button>
            </div>
        </div>
    )
}
