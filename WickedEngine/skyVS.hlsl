#include "globals.hlsli"
#include "icosphere.hlsli"

struct VSOut{
	float4 pos : SV_POSITION;
	float3 nor : TEXCOORD0;
	float4 pos2D : SCREENPOSITION;
};

VSOut main(uint vid : SV_VERTEXID)
{
	VSOut Out = (VSOut)0;
	Out.pos = Out.pos2D = mul(float4(ICOSPHERE[vid].xyz, 0), g_xCamera_VP);
	Out.nor=ICOSPHERE[vid].xyz;
	return Out;
}
