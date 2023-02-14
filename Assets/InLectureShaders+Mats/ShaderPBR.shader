Shader "Custom/ShaderPBR"
{
    Properties
    {
        //The base color of the object
        _Color ("Color", Color) = (1,1,1,1)
        //The metallic texture
        _MetallicTex ("Metallic (R)", 2D) = "white" {}
         //Slider for the metallic property
        _Metallic("Metallic", Range(0,1)) = 0.0
    }
        SubShader
        {
            //Set the rendering queue to Geometry
            Tags { "Queue" = "Geometry"}
            LOD 200

            CGPROGRAM
            #pragma surface surf Standard 

            #pragma target 3.0

            //Declare properties for the sub-shader
            sampler2D _MetallicTex; 
            half _Metallic; 
            fixed4 _Color; 

        struct Input
        {
            //The UV coordinates for the metallic texture
            float2 uv_MetallicTex;
        };

        //Declare an instancing buffer for GPU instancing
        UNITY_INSTANCING_BUFFER_START(Props)
        UNITY_INSTANCING_BUFFER_END(Props)

        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            // Set the base color of the material
            o.Albedo = _Color.rgb; 
            // Set the metallic value of the material
            o.Metallic = _Metallic; 
            // Set the smoothness of the material based on the metallic texture 
            o.Smoothness = tex2D(_MetallicTex, IN.uv_MetallicTex).r; 
        }
        ENDCG
    }
    FallBack "Diffuse"
}
