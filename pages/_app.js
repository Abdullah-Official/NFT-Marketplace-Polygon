import "../styles/globals.css";
import Navbar from "../components/navbar.jsx";

function MyApp({ Component, pageProps }) {
  
  return (
    <div>
         <div>
        <Navbar />
      </div>
      <Component {...pageProps} />
    </div>
  );
}

export default MyApp;
