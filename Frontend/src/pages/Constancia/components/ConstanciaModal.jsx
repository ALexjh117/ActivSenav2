import React, { useState } from 'react';

function ConstanciaModal({ constancia, onClose, onGenerarConstancia }) {
  const [enviado, setEnviado] = useState(false);

  const handleGenerar = () => {
    if (constancia.horaLudicas >= 60) {
      onGenerarConstancia(constancia.id);
      setEnviado(true);
    }
  };

  const puedeGenerar = constancia.horaLudicas >= 60;

  return (
    <div className="GHmodal">
      <div className="GHmodal-content">
        <h2 className="GHh2">Detalles del Aprendiz</h2>

        <p className="GHparrafo"><strong>Nombre:</strong> {constancia.nombre}</p>
        <p className="GHparrafo"><strong>Ficha:</strong> {constancia.ficha}</p>
        <p className="GHparrafo"><strong>Programa:</strong> {constancia.programa}</p>
        <p className="GHparrafo"><strong>Objetivo:</strong> 40 horas de actividades lúdicas</p>
        <p className="GHparrafo"><strong>Horas lúdicas realizadas:</strong> {constancia.horaLudicas}h</p>
        <p className="GHparrafo"><strong>Observaciones:</strong> {constancia.observaciones || 'No tiene observaciones.'}</p>

        <div className="GHmodal-buttons">
          <button
            className={`GHbutton ${!puedeGenerar ? 'GHbutton-disabled' : ''}`}
            onClick={handleGenerar}
            disabled={!puedeGenerar || enviado}
          >
            {enviado ? "📤 Enviado al aprendiz" : "Generar Constancia"}
          </button>

          <button className="GHbutton GHbutton.cerrar" onClick={onClose}>
            Cerrar
          </button>
        </div>
      </div>
    </div>
  );
}

export default ConstanciaModal;
