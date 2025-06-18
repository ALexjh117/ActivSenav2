import React, { useState } from "react";
import { FaEye } from "react-icons/fa";
import ConstanciaModal from "./ConstanciaModal";
import "../styles/styles.css";

const constanciasData = [
  {
    id: 1,
    nombre: "Juan Pérez",
    ficha: "123456",
    programa: "Técnico en Mantenimiento de Dispositivos Físicos (MDF)",
    horaLudicas: 60,
    observaciones: "",
  },
  {
    id: 2,
    nombre: "Ana García",
    ficha: "123457",
    programa: "Técnico en Programación de Software",
    horaLudicas: 10,
    observaciones: "Alquiler de elemento no entregado.",
  },
  {
    id: 3,
    nombre: "Carlos Ramírez",
    ficha: "123458",
    programa: "Técnico en Diseño de Productos Digitales",
    horaLudicas: 5,
    observaciones: "Entregado en mal estado",
  },
  {
    id: 4,
    nombre: "María López",
    ficha: "123459",
    programa: "Técnico en Gestión Documental",
    horaLudicas: 60,
    observaciones: "",
  },
  {
    id: 5,
    nombre: "Lucía Rodríguez",
    ficha: "123460",
    programa: "Técnico en Recursos Humanos",
    horaLudicas: 60,
    observaciones: "",
  },
];

function ConstanciasList() {
  const [modalOpen, setModalOpen] = useState(false);
  const [selectedConstancia, setSelectedConstancia] = useState(null);
  const [message, setMessage] = useState("");
  const [enviados, setEnviados] = useState([]); // IDs de constancias ya enviadas

  const handleVerDetalles = (constancia) => {
    setSelectedConstancia(constancia);
    setModalOpen(true);
  };

  const handleCerrarModal = () => {
    setModalOpen(false);
    setSelectedConstancia(null);
  };

  const handleGenerarConstancia = (id) => {
    setMessage(`✅ ¡Constancia generada para el aprendiz con ID: ${id}!`);
    setEnviados((prev) => [...prev, id]);
    setTimeout(() => setMessage(""), 3000);
  };

  return (
    <div className="GHcontainer">
      <h1 className="GHh1">Constancias Generadas</h1>

      {message && (
        <div
          className={`GHmessage ${
            message.includes("rechazada") ? "GH-message-error" : ""
          }`}
        >
          {message}
        </div>
      )}

      <ul className="GHul">
        {constanciasData.map((constancia) => {
          const yaEnviada = enviados.includes(constancia.id);

          return (
            <li className="GHli" key={constancia.id}>
              <div className="GHinfo">
                <strong>{constancia.nombre}</strong>
                <p className="GHparrafo">
                  Horas lúdicas: <strong>{constancia.horaLudicas}h</strong> –{" "}
                  {constancia.horaLudicas >= 60
                    ? "✅ Cumplió con el objetivo"
                    : "⚠️ En proceso"}
                </p>
                <p className="GHparrafo">
                  Observación:{" "}
                  {constancia.observaciones || "No tiene ninguna observación."}
                </p>
              </div>
              <div className="GHacciones">
                <button
                  className={`GHbutton ${yaEnviada ? "GHbutton-disabled" : ""}`}
                  onClick={() => handleVerDetalles(constancia)}
                  disabled={yaEnviada}
                >
                  {yaEnviada ? "📤 Enviado al aprendiz" : <><FaEye /> Ver Detalles</>}
                </button>
              </div>
            </li>
          );
        })}
      </ul>

      {modalOpen && selectedConstancia && (
        <ConstanciaModal
          constancia={selectedConstancia}
          onClose={handleCerrarModal}
          onGenerarConstancia={handleGenerarConstancia}
        />
      )}
    </div>
  );
}

export default ConstanciasList;
