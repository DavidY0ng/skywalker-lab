<script>
	import * as THREE from 'three';
	import * as SC from 'svelte-cubed';

    let spin = 0

    SC.onFrame(() => {
		spin += 0.01;
	});

    const purpleColor = new THREE.Color(0x800080)

</script>

<SC.Canvas antialias  >
	<SC.Mesh 
        geometry={new THREE.OctahedronGeometry()}
        material={new THREE.MeshStandardMaterial({ color: purpleColor })}
        rotation={[0, spin, 0]}
     />
	<SC.PerspectiveCamera position={[1, 1, 3]} />
    <SC.OrbitControls enableZoom={false} />
    <SC.AmbientLight intensity={1.5} />
    <SC.DirectionalLight intensity={0.6} position={[-2, 3, 2]} />
</SC.Canvas>