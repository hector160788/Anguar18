package mx.sep.mec.web.ws.schemas;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import javax.xml.namespace.QName;
import jakarta.xml.ws.WebEndpoint;
import jakarta.xml.ws.WebServiceClient;
import jakarta.xml.ws.WebServiceFeature;
import jakarta.xml.ws.Service;

/**
 * This class was generated by Apache CXF 4.0.5
 * 2024-10-08T11:39:25.296-06:00
 * Generated source version: 4.0.5
 *
 */
@WebServiceClient(name = "TitulosPortTypeService",
                  wsdlLocation = "file:/C:/Users/hector/Documents/workspaceProfesional/titulacion/src/main/resources/static/wsdl/TitulosElectronicos2024.wsdl",
                  targetNamespace = "http://ws.web.mec.sep.mx/schemas")
public class TitulosPortTypeService extends Service {

    public static final URL WSDL_LOCATION;

    public static final QName SERVICE = new QName("http://ws.web.mec.sep.mx/schemas", "TitulosPortTypeService");
    public static final QName TitulosPortTypeSoap11 = new QName("http://ws.web.mec.sep.mx/schemas", "TitulosPortTypeSoap11");
    static {
        URL url = null;
        try {
            url = URI.create("file:/C:/Users/hector/Documents/workspaceProfesional/titulacion/src/main/resources/static/wsdl/TitulosElectronicos2024.wsdl").toURL();
        } catch (MalformedURLException e) {
            java.util.logging.Logger.getLogger(TitulosPortTypeService.class.getName())
                .log(java.util.logging.Level.INFO,
                     "Can not initialize the default wsdl from {0}", "file:/C:/Users/hector/Documents/workspaceProfesional/titulacion/src/main/resources/static/wsdl/TitulosElectronicos2024.wsdl");
        }
        WSDL_LOCATION = url;
    }

    public TitulosPortTypeService(URL wsdlLocation) {
        super(wsdlLocation, SERVICE);
    }

    public TitulosPortTypeService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public TitulosPortTypeService() {
        super(WSDL_LOCATION, SERVICE);
    }

    public TitulosPortTypeService(WebServiceFeature ... features) {
        super(WSDL_LOCATION, SERVICE, features);
    }

    public TitulosPortTypeService(URL wsdlLocation, WebServiceFeature ... features) {
        super(wsdlLocation, SERVICE, features);
    }

    public TitulosPortTypeService(URL wsdlLocation, QName serviceName, WebServiceFeature ... features) {
        super(wsdlLocation, serviceName, features);
    }




    /**
     *
     * @return
     *     returns TitulosPortType
     */
    @WebEndpoint(name = "TitulosPortTypeSoap11")
    public TitulosPortType getTitulosPortTypeSoap11() {
        return super.getPort(TitulosPortTypeSoap11, TitulosPortType.class);
    }

    /**
     *
     * @param features
     *     A list of {@link jakarta.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns TitulosPortType
     */
    @WebEndpoint(name = "TitulosPortTypeSoap11")
    public TitulosPortType getTitulosPortTypeSoap11(WebServiceFeature... features) {
        return super.getPort(TitulosPortTypeSoap11, TitulosPortType.class, features);
    }

}
