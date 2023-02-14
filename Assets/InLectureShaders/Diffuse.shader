Shader "Example/Diffuse" {


    Properties{
        //A texture to be applied to the object 
      _MainTex("Texture", 2D) = "white" {}

    }
        
        SubShader{
        //Specifies the type of object to render
          Tags { "RenderType" = "Opaque" }
          CGPROGRAM
          #pragma surface surf Lambert

          struct Input {
        //the UV coordinates of the texture 
              float2 uv_MainTex;
          };
    //A texture sampler for texture mapping 
          sampler2D _MainTex;

          void surf(Input IN, inout SurfaceOutput o) {
              //Samples the texture and assigns it to the surface albedo color
              o.Albedo = tex2D(_MainTex, IN.uv_MainTex).rgb;
          }
          ENDCG
    }
        Fallback "Diffuse"
}
