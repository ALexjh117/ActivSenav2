import React, { useState } from "react";
import {
  FaCalendarAlt,
  FaDiscourse,
  FaHome,
  FaCheckSquare,
  FaTimes,
  FaQrcode,
  FaThumbsUp,
  FaAddressBook,
  FaIdBadge,
  FaCommentDots,
} from "react-icons/fa";

import logo from "../img/logo.png";
import avatar from "../img/avatar.png";
import Folder from "../../../../Components/Folder/Folder";

export default function MenuLateralIn({ menuAbierto, toggleMenu, setContenidoActual }) {
  const [mostrarMenu, setMostrarMenu] = useState(false);

  const toggleDropdown = () => setMostrarMenu((prev) => !prev);

  const irAPerfil = () => {
    setContenidoActual("perfil");
    setMostrarMenu(false);
  };

  const irConfig = () => {
    setContenidoActual("config");
    setMostrarMenu(false);
  };

  return (
    <aside className={`barradash ${menuAbierto ? "mostrar" : "ocultar"}`}>
      <section className="Clogodash">
        <div className="UserHeaderInfo" onClick={toggleDropdown}>
          <img src={avatar} alt="Usuario" className="avatardash" />
          <span className="nombredash">Instructor</span>
        </div>
        <button className="subirdash" onClick={toggleMenu}>
          <FaTimes />
        </button>

        {mostrarMenu && (
          <div className="menudesplegabledash">
            <ul>
              <li className="opcionesm" onClick={irAPerfil}>Perfil</li>
              <li className="opcionesm" onClick={irConfig}>Configuración</li>
              <li className="opcionesm">Cerrar sesión</li>
            </ul>
          </div>
        )}
      </section>

      <nav className="menudash">
        <button onClick={() => setContenidoActual("userviewin")} className="opciondash">
          <FaHome className="iconodash" /> Inicio
        </button>

        <button onClick={() => setContenidoActual("actividades")} className="opciondash">
          <FaCheckSquare className="iconodash" /> Actividades
        </button>

        <button onClick={() => setContenidoActual("aplicacion")} className="opciondash">
          <FaCalendarAlt className="iconodash" /> Eventos
        </button>

        <button onClick={() => setContenidoActual("comprobar")} className="opciondash">
          <FaCommentDots className="iconodash" /> Feedback
        </button>

        <button onClick={() => setContenidoActual("calendario")} className="opciondash">
          <FaCalendarAlt className="iconodash" /> Calendario
        </button>

        <button onClick={() => setContenidoActual("aprendiz")} className="opciondash">
          <FaIdBadge className="iconodash" /> Constancia de Aprendiz
        </button>

        <button onClick={() => setContenidoActual("registro")} className="opciondash">
          <FaQrcode className="iconodash" /> Registro QR
        </button>

        <button onClick={() => setContenidoActual("cartacontacto")} className="opciondash">
          <FaAddressBook className="iconodash" /> Contactos
        </button>

        <button onClick={() => setContenidoActual("chromagrid")} className="opciondash">
          <FaThumbsUp className="iconodash" /> Aprobados
        </button>

        <button onClick={() => setContenidoActual("asistenciasactividad")} className="opciondash">
          <FaCheckSquare className="iconodash" /> Asistencias por Actividad
        </button>

        <div className="folder-dash-container">
          <Folder
            items={[
              { id: "planevento", nombre: "Eventos" },
              { id: "alquiler", nombre: "Alquiler" },
              { id: "registrarl", nombre: "Lúdicas" },
            ]}
            color="#30ee0a"
            size={1}
            onSelectItem={(itemId) => setContenidoActual(itemId)}
          />
        </div>

        <img src={logo} alt="Logo" />
      </nav>
    </aside>
  );
}
