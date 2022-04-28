from posixpath import basename
import yaml
from pprint import pprint

import os
import shutil


target_name = "VPT/KronMask/"

dfc = os.path.join(os.getcwd(), "../../dist/build/Dfc/dfc")

fhw = os.path.join(os.getcwd(), "../../fhw")

prefix = os.path.join(os.getcwd(), target_name)

base = os.getcwd()

m512x512 =  [ 
    # "matrices/PEPM/dw256A/dw256A_512x512_2480.hs",
    # "matrices/PEPM/dwb512/dwb512_512x512_2500.hs",
    # "matrices/PEPM/dwt_503/dwt_503_512x512_3265.hs",
    # "matrices/PEPM/tomography/tomography_512x512_28726.hs",
    # "matrices/PEPM/Trefethen_500/trefethen_500_512x512_4489.hs",
    # "matrices/PEPM/diagonal_512x512/diagonal_512x512.hs",

  ]

m512x512_masks =  [ 
    # "matrices/PEPM/dw256A/dw256A_512x512_2480_mask.hs",
    # "matrices/PEPM/dwb512/dwb512_512x512_2500_mask.hs",
    # "matrices/PEPM/dwt_503/dwt_503_512x512_3265_mask.hs",
    # "matrices/PEPM/tomography/tomography_512x512_28726_mask.hs",
    # "matrices/PEPM/Trefethen_500/trefethen_500_512x512_4489_mask.hs",
    # "matrices/PEPM/diagonal_512x512/diagonal_512x512_mask.hs"
  ]


m256x256 =  [ 
    # "matrices/PEPM/dwt_245/dwt_245_256x256_853.hs",
    # "matrices/PEPM/n3c5-b4/n3c5-b4_256x256_1260.hs",
    # "matrices/PEPM/steam1/steam_256x256_3762.hs",
    # "matrices/PEPM/can_256/can_256_256x256_1586.hs",
    # "matrices/PEPM/diagonal_256x256/diagonal_256x256.hs",

  ]  

m256x256_masks =  [ 
    "matrices/PEPM/dwt_245/dwt_245_256x256_853_mask.hs",
    "matrices/PEPM/n3c5-b4/n3c5-b4_256x256_1260_mask.hs",
    # "matrices/PEPM/steam1/steam_256x256_3762_mask.hs",
    # "matrices/PEPM/can_256/can_256_256x256_1586_mask.hs",
    # "matrices/PEPM/diagonal_256x256/diagonal_256x256_mask.hs",
    "matrices/VPT/data/VPT/256x256/diagonal_256x256_mask.hs"

  ]  

m128x128 =  [ 
    "matrices/VPT/data/VPT/128x128/football/football_128x128_613.hs",
    "matrices/VPT/data/VPT/128x128/GD98b/GD98_b_128x128_207.hs",
    # "matrices/PEPM/gent113/gent113_128x128_655.hs",
    # "matrices/VPT/data/VPT/128x128/Journals/Journals_128x128_6096.hs",
    "matrices/VPT/data/VPT/128x128/robot/robot_128x128_870.hs"
    # "matrices/PEPM/robot/robot_128x128_870.hs",
    # "matrices/VPT/data/VPT/128x128/diagonal_128x128/diagonal_128x128.hs"
  ]  


m128x128_masks =  [ 
    "matrices/PEPM/football/football_128x128_613_mask.hs",
    "matrices/PEPM/GD98_b/GD98_b_128x128_207_mask.hs",
    # "matrices/PEPM/gent113/gent113_128x128_655_mask.hs",
    # "matrices/PEPM/Journals/Journals_128_128_6096_mask.hs",
    # "matrices/PEPM/robot/robot_128x128_870_mask.hs",
    "matrices/VPT/data/VPT/128x128/diagonal/diagonal_128x128_mask.hs"
  ]  

m64x64 = [ 
    "matrices/VPT/data/VPT/64x64/bfwa/bfwa62_64x64_450.hs",
    # "matrices/PEPM/can_61/can_61_64x64_309.hs",
    # "matrices/VPT/data/VPT/64x64/dolphins/dolphins_64x64_159.hs",
    "matrices/VPT/data/VPT/64x64/GD99_b/GD99_b_64x64_127.hs",
    "matrices/VPT/data/VPT/64x64/will57/will57_64x64_281.hs",
    # "matrices/PEPM/diagonal_64x64/diagonal_64x64.hs"
  ]  

m64x64_masks = [ 
    "matrices/PEPM/bfwa62/bfwa62_64x64_450_mask.hs",
    # "matrices/PEPM/can_61/can_61_64x64_309_mask.hs",
    # "matrices/PEPM/dolphins/dolphins_64x64_159_mask.hs",
    "matrices/PEPM/GD99_b/GD99_b_64x64_127_mask.hs",
    # "matrices/PEPM/will57/will57_64x64_281_mask.hs",
    "matrices/VPT/data/VPT/64x64/diagonal/diagonal_64x64_mask.hs"
  ] 

m2x2 = [
    "matrices/VPT/data/VPT/Small_1_2x2.mtx",
    "matrices/VPT/data/VPT/Small_2_2x2.mtx"
  ]

m4x4 = [
    "matrices/VPT/data/VPT/Small_1_4x4.mtx",
    "matrices/VPT/data/VPT/Small_2_4x4.mtx"
  ]


def read_matrix(path):
    line = ""
    with open(os.path.join(base,path)) as f:
        line = f.readline()
    
    assert(line != "")
    return line

def fhw_dfc(bindings, path_to_src, bench_name, config):
    
    for bs, bs_name in bindings:
        for b, name in bs:
            path = os.path.join(prefix, (bench_name + name))
            test_path = "{}.hs".format(bench_name)

            if not os.path.exists(os.path.join(path, "{}_package.sv".format(bench_name))):
                if not os.path.exists(path):
                    os.mkdir(path)
                os.chdir(path)
                with open(path_to_src) as f1:
                    print(name)
                    with open(os.path.join(path, test_path), 'w') as f2:
                        f2.writelines(f1.readlines() + [b])
                assert(os.system(fhw + ' -f "+RTS -K600M -RTS" --dataflow {}.hs'.format(bench_name)) == 0)
                assert(os.system(dfc + ' +RTS -K600M -RTS -v --modulename={} {}_linked.hcr.df'.format(bench_name, bench_name)) == 0)
            
            config[os.path.relpath(os.path.join(path, test_path), prefix)] = ["{}".format(bench_name), bs_name, bs_name, bs_name, "-"]
            os.chdir(os.path.join(path,".."))

    return config

def test_matrices_add_add(config):

    path_original = os.path.join(os.getcwd(), "src/VPT/EAddAddAdd2/MAddAddAdd2.hs")
    path_distilled = os.path.join(os.getcwd(), "src/VPT/EAddAddAdd2/MAddAddAdd2DS.hs")

    
    zipped = list(zip([m64x64],["64"]))
    
    bindings = [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: QTree Bool\n" +
                "m3 = " + read_matrix(m3) + "\n" +
                "m4 :: QTree Bool\n" +
                "m4 = " + read_matrix(m4) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3), os.path.basename(m4)])) for m1 in ms for m2 in ms for m3 in ms for m4 in ms], size) for ms,size in zipped]

    bindingsDS = [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: QTree Bool\n"
                "m3 = " + read_matrix(m3) + "\n" +
                "m4 :: QTree Bool\n" +
                "m4 = " + read_matrix(m4) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3), os.path.basename(m4)])) for m1 in ms for m2 in ms for m3 in ms for m4 in ms], size) for ms,size in zipped]

    config = fhw_dfc(bindings, path_original, "MAddAdd", config)
    config = fhw_dfc(bindingsDS, path_distilled, "MAddAddDS", config)

    return config
    
    
    

def test_matrices_add_mask(config):

    path_original = os.path.join(os.getcwd(), "src/VPT/MaskAdd/AddMask.hs")
    path_distilled = os.path.join(os.getcwd(), "src/VPT/MaskAdd/AddMaskDS.hs")

    
    zipped = list(zip([m64x64],[m64x64_masks],["64"]))
    
    bindings = [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in ms for m2 in ms for m3 in mk], size) for ms,mk,size in zipped]

    bindingsDS = [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in ms for m2 in ms for m3 in mk], size) for ms,mk,size in zipped]
    
    config = fhw_dfc(bindings,path_original,"AddMask", config)
    config = fhw_dfc(bindingsDS,path_distilled, "AddMaskDS", config)

    
    return config


def test_matrices_kron_mask(config):

    path_original = os.path.join(os.getcwd(), "src/VPT/KronMask/KronMask.hs")
    path_distilled = os.path.join(os.getcwd(), "src/VPT/KronMask/KronMaskDS.hs")

    
    bindings = [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in m64x64 for m2 in m2x2 for m3 in m128x128_masks], "64")] +\
             \
              [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in m64x64 for m2 in m4x4 for m3 in m256x256_masks], "64")] + \
                    \
              [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in m128x128 for m2 in m2x2 for m3 in m256x256_masks], "128")]


    bindingsDS = [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in m64x64 for m2 in m2x2 for m3 in m128x128_masks], "64")] +\
             \
              [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in m64x64 for m2 in m4x4 for m3 in m256x256_masks], "64")] + \
                    \
              [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in m128x128 for m2 in m2x2 for m3 in m256x256_masks], "128")]
    

    config = fhw_dfc(bindings, path_original, "KronMask", config)
    config = fhw_dfc(bindingsDS, path_distilled, "KronMaskDS", config)

    return config

def test_matrices_map_add(config):

    path_original = os.path.join(os.getcwd(), "src/VPT/MapAdd/MapAdd.hs")
    path_distilled = os.path.join(os.getcwd(), "src/VPT/MapAdd/MapAddDS.hs")

    
    zipped = list(zip([m64x64],["64"]))
    
    bindings = [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2), "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in ms for m2 in ms], size) for ms,size in zipped]

    bindingsDS = [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n" , "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in ms for m2 in ms], size) for ms,size in zipped]
    
    config = fhw_dfc(bindings, path_original, "MapAdd", config)
    config = fhw_dfc(bindingsDS, path_distilled, "MapAddDS", config)

    return config


def test_matrices_map_kron(config):

    path_original = os.path.join(os.getcwd(), "src/VPT/MapKron/MapKron.hs")
    path_distilled = os.path.join(os.getcwd(), "src/VPT/MapKron/MapKronDS.hs")
    
    bindings = [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2), "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in m64x64 for m2 in m2x2], "64")] +\
                    \
                [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2), "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in m64x64 for m2 in m4x4], "64")] +\
                    \
                [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2), "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in m128x128 for m2 in m2x2], "128")]

    bindingsDS = [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in m64x64 for m2 in m2x2], "64")] + \
                    \
                [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in m64x64 for m2 in m4x4], "64")] + \
                    \
                [([("m1 :: QTree Bool\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Bool\n" + 
                "m2 = " + read_matrix(m2) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in m128x128 for m2 in m2x2], "128")]


    
    config = fhw_dfc(bindings, path_original, "MapKron", config)
    config = fhw_dfc(bindingsDS, path_distilled, "MapKronDS", config)

    return config


# pprint(templates)
if (os.path.exists(prefix)):
    shutil.rmtree((prefix))

os.mkdir((os.path.join(prefix)))


test_config = {}
# test_config = test_matrices_add_add(test_config)
# test_config = test_matrices_add_mask(test_config)
test_config = test_matrices_kron_mask(test_config)
# test_config = test_matrices_map_add(test_config)
# test_config = test_matrices_map_kron(test_config)

with open('sw_templates.yaml', 'w') as f:
    yaml.dump(test_config, f, default_flow_style=False)

print(test_config)
