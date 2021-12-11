from posixpath import basename
import yaml
from pprint import pprint

import os
import shutil


target_name = "MaskKron/"

dfc = os.path.join(os.getcwd(), "../../dist/build/Dfc/dfc")

fhw = os.path.join(os.getcwd(), "../../fhw")

prefix = os.path.join(os.getcwd(), target_name)

base = os.getcwd()

m512x512 =  [ 
    # "matrices/PEPM/dw256A/dw256A_512x512_2480.hs",
    # "matrices/PEPM/dwb512/dwb512_512x512_2500.hs",
    # "matrices/PEPM/dwt_503/dwt_503_512x512_3265.hs",
    # "matrices/PEPM/tomography/tomography_512x512_28726.hs",
    "matrices/PEPM/Trefethen_500/trefethen_500_512x512_4489.hs",
    # "matrices/PEPM/diagonal_512x512/diagonal_512x512.hs"
  ]

m512x512_masks =  [ 
    # "matrices/PEPM/dw256A/dw256A_512x512_2480_mask.hs",
    # "matrices/PEPM/dwb512/dwb512_512x512_2500_mask.hs",
    # "matrices/PEPM/dwt_503/dwt_503_512x512_3265_mask.hs",
    # "matrices/PEPM/tomography/tomography_512x512_28726_mask.hs",
    # "matrices/PEPM/Trefethen_500/trefethen_500_512x512_4489_mask.hs",
    "matrices/PEPM/diagonal_512x512/diagonal_512x512_mask.hs"
  ]


m256x256 =  [ 
    # "matrices/PEPM/dwt_245/dwt_245_256x256_853.hs",
    "matrices/PEPM/n3c5-b4/n3c5-b4_256x256_1260.hs",
    # "matrices/PEPM/steam1/steam_256x256_3762.hs",
    "matrices/PEPM/can_256/can_256_256x256_1586.hs",
    # "matrices/PEPM/diagonal_256x256/diagonal_256x256.hs"
  ]  

m256x256_masks =  [ 
    # "matrices/PEPM/dwt_245/dwt_245_256x256_853_mask.hs",
    # "matrices/PEPM/n3c5-b4/n3c5-b4_256x256_1260_mask.hs",
    # "matrices/PEPM/steam1/steam_256x256_3762_mask.hs",
    # "matrices/PEPM/can_256/can_256_256x256_1586_mask.hs",
    "matrices/PEPM/diagonal_256x256/diagonal_256x256_mask.hs"
  ]  

m128x128 =  [ 
    "matrices/PEPM/football/football_128x128_613.hs",
    # "matrices/PEPM/GD98_b/GD98_b_128x128_207.hs",
    # "matrices/PEPM/gent113/gent113_128x128_655.hs",
    # "matrices/PEPM/Journals/Journals_128_128_6096.hs",
    "matrices/PEPM/robot/robot_128x128_870.hs",
    # "matrices/PEPM/diagonal_128x128/diagonal_128x128.hs"
  ]  


m128x128_masks =  [ 
    # "matrices/PEPM/football/football_128x128_613_mask.hs",
    # "matrices/PEPM/GD98_b/GD98_b_128x128_207_mask.hs",
    # "matrices/PEPM/gent113/gent113_128x128_655_mask.hs",
    # "matrices/PEPM/Journals/Journals_128_128_6096_mask.hs",
    # "matrices/PEPM/robot/robot_128x128_870_mask.hs",
    "matrices/PEPM/diagonal_128x128/diagonal_128x128_mask.hs"
  ]  

m64x64 = [ 
    # "matrices/PEPM/bfwa62/bfwa62_64x64_450.hs",
    # "matrices/PEPM/can_61/can_61_64x64_309.hs",
    "matrices/PEPM/dolphins/dolphins_64x64_159.hs",
    # "matrices/PEPM/GD99_b/GD99_b_64x64_127.hs",
    "matrices/PEPM/will57/will57_64x64_281.hs",
    # "matrices/PEPM/diagonal_64x64/diagonal_64x64.hs"
  ]  

m64x64_masks = [ 
    # "matrices/PEPM/bfwa62/bfwa62_64x64_450_mask.hs",
    # "matrices/PEPM/can_61/can_61_64x64_309_mask.hs",
    # "matrices/PEPM/dolphins/dolphins_64x64_159_mask.hs",
    # "matrices/PEPM/GD99_b/GD99_b_64x64_127_mask.hs",
    # "matrices/PEPM/will57/will57_64x64_281_mask.hs",
    "matrices/PEPM/diagonal_64x64/diagonal_64x64_mask.hs"
  ] 

m2x2 = [
    "matrices/PEPM/Small_1_2x2/Small_1_2x2_2.hs",
    "matrices/PEPM/Small_2_2x2/Small_2_2x2_1.hs"
  ]

m4x4 = [
    "matrices/PEPM/Small_1_4x4/Small_1_4x4_3.hs",
    "matrices/PEPM/Small_2_4x4/Small_2_4x4_2.hs"
  ]


def read_matrix(path):
    line = ""
    with open(os.path.join(base,path)) as f:
        line = f.readline()
    
    assert(line != "")
    return line

def test_matrices_add_add(config):

    path_original = os.path.join(os.getcwd(), "src/EAddAdd/MAddAdd.hs")
    path_distilled = os.path.join(os.getcwd(), "src/EAddAdd/MAddAddDS.hs")

    
    zipped = list(zip([m64x64,m128x128,m256x256],["64","128","256"]))
    
    bindings = [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: QTree Int\n"
                "m3 = " + read_matrix(m3) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in ms for m2 in ms for m3 in ms], size) for ms,size in zipped]

    bindingsDS = [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: QTree Int\n"
                "m3 = " + read_matrix(m3) + "\n" +
                "is_z = (==0)" + "\n\n" +
                "op_add = (+)", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in ms for m2 in ms for m3 in ms], size) for ms,size in zipped]
    
    for bs, bs_name in bindings:
        for b, name in bs:
            path = os.path.join(prefix,"MAddAdd" + name)
            test_path = "MAddAdd.hs"

            if not os.path.exists(path):
                os.mkdir(path)
                os.chdir(path)
                with open(path_original) as f1:
                    print(name)
                    with open(os.path.join(path, test_path), 'w') as f2:
                        f2.writelines(f1.readlines() + [b])
                assert(os.system(fhw + ' -f "+RTS -K300M -RTS" --dataflow MAddAdd.hs') == 0)
                assert(os.system(dfc + ' +RTS -K250M -RTS -v --modulename=MAddAdd MAddAdd_linked.hcr.df') == 0)
            
            config[os.path.relpath(os.path.join(path, test_path), prefix)] = ["MAddAdd",bs_name,bs_name,bs_name,"-"]
            os.chdir(os.path.join(path,".."))

    for bs, bs_name in bindingsDS:
        for b, name in bs:
            path = os.path.join(prefix, "MAddAdd" + name + "DS")
            test_path = "MAddAddDS.hs"

            if not os.path.exists(path):
                os.mkdir(path)
                os.chdir(path)
            
                with open(path_distilled) as f1:
                    print(name)
                    with open(os.path.join(path, test_path), 'w') as f2:
                        f2.writelines(f1.readlines() + [b])
                assert(os.system(fhw + ' -f "+RTS -K250M -RTS" --dataflow MAddAddDS.hs') == 0)
                assert(os.system(dfc + ' +RTS -K250M -RTS -v --modulename=MAddAddDS MAddAddDS_linked.hcr.df') == 0)

            config[os.path.relpath(os.path.join(path, test_path), prefix)] = ["MAddAddDS", bs_name, bs_name, bs_name, "-"]
            os.chdir(os.path.join(path,".."))
    
    return config
    

def test_matrices_add_mask(config):

    path_original = os.path.join(os.getcwd(), "src/AddMask/AddMask.hs")
    path_distilled = os.path.join(os.getcwd(), "src/AddMask/AddMaskDS.hs")

    
    zipped = list(zip([m64x64,m128x128,m256x256],[m64x64_masks,m128x128_masks,m256x256_masks],["64","128","256"]))
    
    bindings = [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in ms for m2 in ms for m3 in mk], size) for ms,mk,size in zipped]

    bindingsDS = [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n" +
                "is_z = (==0)" + "\n\n" +
                "op_add = (+)", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in ms for m2 in ms for m3 in mk], size) for ms,mk,size in zipped]
    
    for bs, bs_name in bindings:
        test_path = "AddMask.hs"
        test_name = "AddMask"
        for b, name in bs:
            path = os.path.join(prefix,"AddMask" + name)
            os.mkdir(path)
            os.chdir(path)
            with open(path_original) as f1:
                print(name)
                with open(os.path.join(path, test_path), 'w') as f2:
                    f2.writelines(f1.readlines() + [b])
                config[os.path.relpath(os.path.join(path, test_path), prefix)] = [test_name,bs_name,bs_name,bs_name,"-"]
            assert(os.system(fhw + ' -f "+RTS -K300M -RTS" --dataflow {}'.format(test_path)) == 0)
            assert(os.system(dfc + ' +RTS -K250M -RTS -v --modulename={} {}_linked.hcr.df'.format(test_name,test_name)) == 0)
            os.chdir(os.path.join(path,".."))


    for bs, bs_name in bindingsDS:
        test_path = "AddMaskDS.hs"
        test_name = "AddMaskDS"
        for b, name in bs:
            path = os.path.join(prefix,"AddMask" + name + "DS")
            os.mkdir(path)
            os.chdir(path)
            with open(path_distilled) as f1:
                print(name)
                with open(os.path.join(path, test_path), 'w') as f2:
                    f2.writelines(f1.readlines() + [b])
                config[os.path.relpath(os.path.join(path, test_path), prefix)] = [test_name, bs_name, bs_name, bs_name, "-"]
            print(os.system(fhw + ' -f "+RTS -K250M -RTS" --dataflow {}'.format(test_path)))
            print(os.system(dfc + ' +RTS -K250M -RTS -v --modulename={} {}_linked.hcr.df'.format(test_name,test_name)))
            os.chdir(os.path.join(path,".."))
    
    return config


def test_matrices_kron_mask(config):

    path_original = os.path.join(os.getcwd(), "src/KronMask/KronMask.hs")
    path_distilled = os.path.join(os.getcwd(), "src/KronMask/KronMaskDS.hs")

    
    bindings = [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in m64x64 for m2 in m2x2 for m3 in m128x128_masks], "64")] +\
             \
              [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in m64x64 for m2 in m4x4 for m3 in m256x256_masks], "64")] + \
                    \
              [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in m128x128 for m2 in m2x2 for m3 in m256x256_masks], "128")]


    bindingsDS = [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n"
                "is_z = (==0)" + "\n" +
                "op_mul = (*)" , "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in m64x64 for m2 in m2x2 for m3 in m128x128_masks], "64")] +\
             \
              [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n"
                "is_z = (==0)" + "\n" +
                "op_mul = (*)", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in m64x64 for m2 in m4x4 for m3 in m256x256_masks], "64")] + \
                    \
              [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "m3 :: MaskQTree\n"
                "m3 = " + read_matrix(m3) + "\n"
                "is_z = (==0)" + "\n" +
                "op_mul = (*)", "_".join([os.path.basename(m1), os.path.basename(m2), os.path.basename(m3)])) for m1 in m128x128 for m2 in m2x2 for m3 in m256x256_masks], "128")]
    
    for bs, bs_name in bindings:
        test_path = "KronMask.hs"
        test_name = "KronMask"
        for b, name in bs:
            path = os.path.join(prefix,"KronMask" + name)
            if not os.path.exists(path):
                os.mkdir(path)
                os.chdir(path)
                with open(path_original) as f1:
                    print(name)
                    with open(os.path.join(path, test_path), 'w') as f2:
                        f2.writelines(f1.readlines() + [b])
                assert(os.system(fhw + ' -f "+RTS -K300M -RTS" --dataflow {}'.format(test_path)) == 0)
                assert(os.system(dfc + ' +RTS -K250M -RTS -v --modulename={} {}_linked.hcr.df'.format(test_name,test_name)) == 0)
            config[os.path.relpath(os.path.join(path, test_path), prefix)] = [test_name,bs_name,bs_name,bs_name,"-"]
            os.chdir(os.path.join(path,".."))


    for bs, bs_name in bindingsDS:
        test_path = "KronMaskDS.hs"
        test_name = "KronMaskDS"
        for b, name in bs:
            path = os.path.join(prefix,"KronMask" + name + "DS")
            os.mkdir(path)
            os.chdir(path)
            with open(path_distilled) as f1:
                print(name)
                with open(os.path.join(path, test_path), 'w') as f2:
                    f2.writelines(f1.readlines() + [b])
                config[os.path.relpath(os.path.join(path, test_path), prefix)] = [test_name, bs_name, bs_name, bs_name, "-"]
            print(os.system(fhw + ' -f "+RTS -K250M -RTS" --dataflow {}'.format(test_path)))
            print(os.system(dfc + ' +RTS -K250M -RTS -v --modulename={} {}_linked.hcr.df'.format(test_name,test_name)))
            os.chdir(os.path.join(path,".."))
    
    return config


def test_matrices_map_add(config):

    path_original = os.path.join(os.getcwd(), "src/MapAdd/MapAdd.hs")
    path_distilled = os.path.join(os.getcwd(), "src/MapAdd/MapAddDS.hs")

    
    zipped = list(zip([m64x64,m128x128,m256x256],["64","128","256"]))
    
    bindings = [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2), "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in ms for m2 in ms], size) for ms,size in zipped]

    bindingsDS = [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "is_z = (==0)" + "\n\n" +
                "g = (*)" + "\n" +
                "op = (+)" + "\n" +
                "v = 5", "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in ms for m2 in ms], size) for ms,size in zipped]
    
    # for bs, bs_name in bindings:
    #     test_path = "MapAdd.hs"
    #     test_name = "MapAdd"
    #     for b, name in bs:
    #         path = os.path.join(prefix,"MapAdd" + name)
    #         os.mkdir(path)
    #         os.chdir(path)
    #         with open(path_original) as f1:
    #             print(name)
    #             with open(os.path.join(path, test_path), 'w') as f2:
    #                 f2.writelines(f1.readlines() + [b])
    #             config[os.path.relpath(os.path.join(path, test_path), prefix)] = [test_name,bs_name,bs_name,bs_name,"-"]
    #         assert(os.system(fhw + ' -f "+RTS -K300M -RTS" --dataflow {}'.format(test_path)) == 0)
    #         assert(os.system(dfc + ' +RTS -K250M -RTS -v --modulename={} {}_linked.hcr.df'.format(test_name,test_name)) == 0)
    #         os.chdir(os.path.join(path,".."))


    for bs, bs_name in bindingsDS:
        test_path = "MapAddDS.hs"
        test_name = "MapAddDS"
        for b, name in bs:
            path = os.path.join(prefix,"MapAdd" + name + "DS")
            os.mkdir(path)
            os.chdir(path)
            with open(path_distilled) as f1:
                print(name)
                with open(os.path.join(path, test_path), 'w') as f2:
                    f2.writelines(f1.readlines() + [b])
                config[os.path.relpath(os.path.join(path, test_path), prefix)] = [test_name, bs_name, bs_name, bs_name, "-"]
            print(os.system(fhw + ' -f "+RTS -K250M -RTS" --dataflow {}'.format(test_path)))
            print(os.system(dfc + ' +RTS -K250M -RTS -v --modulename={} {}_linked.hcr.df'.format(test_name,test_name)))
            os.chdir(os.path.join(path,".."))
    
    return config


def test_matrices_map_kron(config):

    path_original = os.path.join(os.getcwd(), "src/MapKron/MapKron.hs")
    path_distilled = os.path.join(os.getcwd(), "src/MapKron/MapKronDS.hs")
    
    bindings = [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2), "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in m64x64 for m2 in m2x2], "64")] +\
                    \
                [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2), "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in m64x64 for m2 in m4x4], "64")] +\
                    \
                [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2), "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in m128x128 for m2 in m2x2], "128")]

    bindingsDS = [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "is_z = (==0)" + "\n\n" +
                "g = (*)" + "\n" +
                "op = (+)" + "\n" +
                "v = 5", "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in m64x64 for m2 in m2x2], "64")] + \
                    \
                [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "is_z = (==0)" + "\n\n" +
                "g = (*)" + "\n" +
                "op = (+)" + "\n" +
                "v = 5", "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in m64x64 for m2 in m4x4], "64")] + \
                    \
                [([("m1 :: QTree Int\n" +
                "m1 = " + read_matrix(m1) + "\n" + 
                "m2 :: QTree Int\n" + 
                "m2 = " + read_matrix(m2) + "\n" + 
                "is_z = (==0)" + "\n\n" +
                "g = (*)" + "\n" +
                "op = (+)" + "\n" +
                "v = 5", "_".join([os.path.basename(m1), os.path.basename(m2)])) for m1 in m128x128 for m2 in m2x2], "128")]


    
    for bs, bs_name in bindings:
        test_path = "MapKron.hs"
        test_name = "MapKron"
        for b, name in bs:
            path = os.path.join(prefix,"MapKron" + name)
            os.mkdir(path)
            os.chdir(path)
            with open(path_original) as f1:
                print(name)
                with open(os.path.join(path, test_path), 'w') as f2:
                    f2.writelines(f1.readlines() + [b])
                config[os.path.relpath(os.path.join(path, test_path), prefix)] = [test_name,bs_name,bs_name,bs_name,"-"]
            assert(os.system(fhw + ' -f "+RTS -K300M -RTS" --dataflow {}'.format(test_path)) == 0)
            assert(os.system(dfc + ' +RTS -K250M -RTS -v --modulename={} {}_linked.hcr.df'.format(test_name,test_name)) == 0)
            os.chdir(os.path.join(path,".."))


    for bs, bs_name in bindingsDS:
        test_path = "MapKronDS.hs"
        test_name = "MapKronDS"
        for b, name in bs:
            path = os.path.join(prefix, "MapKron" + name + "DS")
            os.mkdir(path)
            os.chdir(path)
            with open(path_distilled) as f1:
                print(name)
                with open(os.path.join(path, test_path), 'w') as f2:
                    f2.writelines(f1.readlines() + [b])
                config[os.path.relpath(os.path.join(path, test_path), prefix)] = [test_name, bs_name, bs_name, bs_name, "-"]
            print(os.system(fhw + ' -f "+RTS -K250M -RTS" --dataflow {}'.format(test_path)))
            print(os.system(dfc + ' +RTS -K250M -RTS -v --modulename={} {}_linked.hcr.df'.format(test_name,test_name)))
            os.chdir(os.path.join(path,".."))
    
    return config



# pprint(templates)
if (os.path.exists(prefix)):
    shutil.rmtree((prefix))

os.mkdir((os.path.join(prefix)))


test_config = {}
# test_config = test_matrices_add_add(test_config)
# test_config = test_matrices_add_mask(test_config)
# test_config = test_matrices_kron_mask(test_config)
# test_config = test_matrices_map_add(test_config)
test_config = test_matrices_map_kron(test_config)

with open('sw_templates.yaml', 'w') as f:
    yaml.dump(test_config, f, default_flow_style=False)

