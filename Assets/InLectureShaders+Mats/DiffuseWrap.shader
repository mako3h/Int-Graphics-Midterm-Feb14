Shader "Example/DiffuseWrap" {

    Properties{
        //A texture to be applied to the object
        _MainTex("Texture", 2D) = "white" {}
    }
        
        
        SubShader{
        // Specifies the type of object to render
        Tags { "RenderType" = "Opaque" }


        CGPROGRAM
        //Specifies the surface shader tyope to use, in this case its SimpleLambert
          #pragma surface surf SimpleLambert
        
        //Calculates the lighting for the surface using the Lambert lighting model
          half4 LightingSimpleLambert(SurfaceOutput s, half3 lightDir, half atten) {
        //Calculates the dot product of the surface normal  and the light direction 
              half NdotL = dot(s.Normal, lightDir);
              //Declare a local variable of type half4 to represent the color of the output pixel
              half4 c;
              //Multiplies the surface albedo color, the light color, and the dot product, and applies attenuation
              c.rgb = s.Albedo * _LightColor0.rgb * (NdotL * atten);
              // Assigns the surface alpha value to the output alpha value
              c.a = s.Alpha;
              //Returns the final Color
              return c;
          }

        struct Input {
            //The UV coordinates of the texture
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