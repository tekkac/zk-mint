use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 2;

pub const vk: Groth16VerifyingKey =
    Groth16VerifyingKey {
        alpha_beta_miller_loop_result: E12D {
            w0: u288 {
                limb0: 0xebe71e1d0f198ef2eff0edcf,
                limb1: 0xfef8a4e7a858d49581166ded,
                limb2: 0x145c3917a8e1cd4a
            },
            w1: u288 {
                limb0: 0x19784f02df8f56d6cd4f2f94,
                limb1: 0x864d072e6f7d0646cd8a9487,
                limb2: 0x2a744d037936d37
            },
            w2: u288 {
                limb0: 0x5cae73068944e5710202f989,
                limb1: 0x905b7a4d941d686798fe894d,
                limb2: 0x19d984cf6d37ac5d
            },
            w3: u288 {
                limb0: 0x968bb229c39da6bf159b0325,
                limb1: 0xbd5e1b66f6a6c5dcaf12510c,
                limb2: 0xfaa9c16e0335c
            },
            w4: u288 {
                limb0: 0xa1026ad3514ec148d9a25351,
                limb1: 0xdb1e8f5002f8efd92b568b8,
                limb2: 0x1b57a5a6882983f9
            },
            w5: u288 {
                limb0: 0xd09ef27f7036b375d883d257,
                limb1: 0x5e33532cb6e981b32c43324e,
                limb2: 0x162e0056bce8ce93
            },
            w6: u288 {
                limb0: 0xabb9076b7b1d0ef94f059355,
                limb1: 0x9140d26e03b68974e1d9ad44,
                limb2: 0x691177c63b40519
            },
            w7: u288 {
                limb0: 0xf021227f3502ca37f32d8ec9,
                limb1: 0xaf57d4f220e2f8964bfc8abe,
                limb2: 0x27f0d14f7cf35499
            },
            w8: u288 {
                limb0: 0x3d9f53932500c1308a6b4d8e,
                limb1: 0xafb6eed684c5de49b144238,
                limb2: 0x8792c0cc8cf6d82
            },
            w9: u288 {
                limb0: 0xd45e732f4c0782bbe610103e,
                limb1: 0xdb2996752b6e40f0b5d2ebb7,
                limb2: 0x2958ab44baba1d73
            },
            w10: u288 {
                limb0: 0xffda59609b0cc1aa5fe0b244,
                limb1: 0x6f5bbed820a1d5f1b6229f00,
                limb2: 0x925116cbee126c1
            },
            w11: u288 {
                limb0: 0xabcc622f38cbcdcd7b845f0a,
                limb1: 0x844c7592aa4df4b1af5adaca,
                limb2: 0x10c90b8b2b6f6e82
            }
        },
        gamma_g2: G2Point {
            x0: u384 {
                limb0: 0xf75edadd46debd5cd992f6ed,
                limb1: 0x426a00665e5c4479674322d4,
                limb2: 0x1800deef121f1e76,
                limb3: 0x0
            },
            x1: u384 {
                limb0: 0x35a9e71297e485b7aef312c2,
                limb1: 0x7260bfb731fb5d25f1aa4933,
                limb2: 0x198e9393920d483a,
                limb3: 0x0
            },
            y0: u384 {
                limb0: 0xc43d37b4ce6cc0166fa7daa,
                limb1: 0x4aab71808dcb408fe3d1e769,
                limb2: 0x12c85ea5db8c6deb,
                limb3: 0x0
            },
            y1: u384 {
                limb0: 0x70b38ef355acdadcd122975b,
                limb1: 0xec9e99ad690c3395bc4b3133,
                limb2: 0x90689d0585ff075,
                limb3: 0x0
            }
        },
        delta_g2: G2Point {
            x0: u384 {
                limb0: 0xc5c485fa62d8c64519d50d67,
                limb1: 0x3cddfd3c4113f42d7da3c708,
                limb2: 0x121b2ef2cfc8c124,
                limb3: 0x0
            },
            x1: u384 {
                limb0: 0x9b81e04daa7864ae4991b4d4,
                limb1: 0x3988e866ab122d1b26d3dddb,
                limb2: 0x715d7aef91230b8,
                limb3: 0x0
            },
            y0: u384 {
                limb0: 0x8700c521b2a22723069f74d7,
                limb1: 0x3442030b5dc1c5348649447e,
                limb2: 0xab85f1005ff57de,
                limb3: 0x0
            },
            y1: u384 {
                limb0: 0x99ce04c2e63bf7c7b9313fac,
                limb1: 0xc3431c72970a2c0dddc55782,
                limb2: 0xf0edeacdcde7be,
                limb3: 0x0
            }
        }
    };

pub const ic: [
    G1Point
    ; 3] = [
    G1Point {
        x: u384 {
            limb0: 0x91a2c4b92494cf8eb4f7cf74,
            limb1: 0xba4eb14f85de7ded24b315bd,
            limb2: 0x2c3e1ff2601fa4ff,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x158f3932cabe725aeab0240f,
            limb1: 0x507814a6b5d8259f79aa4e82,
            limb2: 0x20ca23bc05342d69,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x819b33b033b202e9cf6e25cb,
            limb1: 0x4ac25ef155e40b55372edce4,
            limb2: 0x2ef771edf377032a,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x276fe8b6f62f64b1cfe40a65,
            limb1: 0xdb5edf78ea1c3f403d9adc13,
            limb2: 0x23a0c7cf48365a04,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x58fc39a7b0ceeaa55fd2a661,
            limb1: 0xae5d287f9d6e03feee307dec,
            limb2: 0x105edde0d6fa04e3,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xebe5de7b8a73cc7bfba6b352,
            limb1: 0xa8e8c53f944cd5f4824b732f,
            limb2: 0xea0139f14ec7585,
            limb3: 0x0
        }
    },
];


pub const precomputed_lines: [
    G2Line
    ; 176] = [
    G2Line {
        r0a0: u288 {
            limb0: 0x4d347301094edcbfa224d3d5,
            limb1: 0x98005e68cacde68a193b54e6,
            limb2: 0x237db2935c4432bc
        },
        r0a1: u288 {
            limb0: 0x6b4ba735fba44e801d415637,
            limb1: 0x707c3ec1809ae9bafafa05dd,
            limb2: 0x124077e14a7d826a
        },
        r1a0: u288 {
            limb0: 0x49a8dc1dd6e067932b6a7e0d,
            limb1: 0x7676d0000961488f8fbce033,
            limb2: 0x3b7178c857630da
        },
        r1a1: u288 {
            limb0: 0x98c81278efe1e96b86397652,
            limb1: 0xe3520b9dfa601ead6f0bf9cd,
            limb2: 0x2b17c2b12c26fdd0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xadf007707bb6be5d75d86289,
            limb1: 0x7987315869dd5ee6591b2aed,
            limb2: 0x2c93a77295dbab6b
        },
        r0a1: u288 {
            limb0: 0xf992468ed2a071fbe3957e25,
            limb1: 0x669f6ded39669606347978c,
            limb2: 0x15f83868803e1807
        },
        r1a0: u288 {
            limb0: 0x6af48915cd3c3f4299fe3c48,
            limb1: 0xb2a1f1f16c33a012b40ecd2a,
            limb2: 0x233d76cd1e762f29
        },
        r1a1: u288 {
            limb0: 0x55b4d9497c0450bc09a83e94,
            limb1: 0xc1aa3378997734650b766827,
            limb2: 0x1fcfb553a017ad06
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1b3d578c32d1af5736582972,
            limb1: 0x204fe74db6b371d37e4615ab,
            limb2: 0xce69bdf84ed6d6d
        },
        r0a1: u288 {
            limb0: 0xfd262357407c3d96bb3ba710,
            limb1: 0x47d406f500e66ea29c8764b3,
            limb2: 0x1e23d69196b41dbf
        },
        r1a0: u288 {
            limb0: 0x1ec8ee6f65402483ad127f3a,
            limb1: 0x41d975b678200fce07c48a5e,
            limb2: 0x2cad36e65bbb6f4f
        },
        r1a1: u288 {
            limb0: 0xcfa9b8144c3ea2ab524386f5,
            limb1: 0xd4fe3a18872139b0287570c3,
            limb2: 0x54c8bc1b50aa258
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb5ee22ba52a7ed0c533b7173,
            limb1: 0xbfa13123614ecf9c4853249b,
            limb2: 0x6567a7f6972b7bb
        },
        r0a1: u288 {
            limb0: 0xcf422f26ac76a450359f819e,
            limb1: 0xc42d7517ae6f59453eaf32c7,
            limb2: 0x899cb1e339f7582
        },
        r1a0: u288 {
            limb0: 0x9f287f4842d688d7afd9cd67,
            limb1: 0x30af75417670de33dfa95eda,
            limb2: 0x1121d4ca1c2cab36
        },
        r1a1: u288 {
            limb0: 0x7c4c55c27110f2c9a228f7d8,
            limb1: 0x8f14f6c3a2e2c9d74b347bfe,
            limb2: 0x83ef274ba7913a5
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xba81c31cc069cdb962a49abe,
            limb1: 0x3ec9145e17a3f9773e663fa3,
            limb2: 0x3d0a7004b55f4be
        },
        r0a1: u288 {
            limb0: 0x6edf83fe69801a1af4e77f22,
            limb1: 0xb1e64ed7adeaeefd3439d304,
            limb2: 0x1a6c160a60f38822
        },
        r1a0: u288 {
            limb0: 0xfd7d41776ee44cd43e7ec0ff,
            limb1: 0x5ae53c5154db84ae3729d66,
            limb2: 0xd26d7a5c2bb7100
        },
        r1a1: u288 {
            limb0: 0x12bcf143c01c3b5aced4beb3,
            limb1: 0xf6a6123de80a23f88c0b026a,
            limb2: 0x1094991f4119f322
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6e2890eea058303cd6500d92,
            limb1: 0xe59ef79850d08ceff03df5cf,
            limb2: 0x1391eee448fdb8af
        },
        r0a1: u288 {
            limb0: 0x7f24d0472d51996714580442,
            limb1: 0xb97d743385c6f7120a312bc,
            limb2: 0x2b65bf963daa05f1
        },
        r1a0: u288 {
            limb0: 0xa566aae81fc464bab17817d7,
            limb1: 0x8d64ae595f58fc497be2cf33,
            limb2: 0x182955d50e48bd7f
        },
        r1a1: u288 {
            limb0: 0x65b9878a7dbdc3e7431ec34c,
            limb1: 0xd041b080d5563f5f9643693,
            limb2: 0x27433c7fb09417d4
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfc23a674d089e9cfdefb1db8,
            limb1: 0x9ddfd61d289b65a9b4254476,
            limb2: 0x1e2f561324ef4447
        },
        r0a1: u288 {
            limb0: 0xf67a6a9e31f6975b220642ea,
            limb1: 0xccd852893796296e4d1ed330,
            limb2: 0x94ff1987d19b62
        },
        r1a0: u288 {
            limb0: 0x360c2a5aca59996d24cc1947,
            limb1: 0x66c2d7d0d176a3bc53f386e8,
            limb2: 0x2cfcc62a17fbeecb
        },
        r1a1: u288 {
            limb0: 0x2ddc73389dd9a9e34168d8a9,
            limb1: 0xae9afc57944748b835cbda0f,
            limb2: 0x12f0a1f8cf564067
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x97123536e36e754282daea57,
            limb1: 0x1f18d584529771d491d13275,
            limb2: 0x1e28016186a4d795
        },
        r0a1: u288 {
            limb0: 0x92b69165d0dba751c89298ce,
            limb1: 0x33eb063e15dfa49dabfca30,
            limb2: 0x29ade258502d8e67
        },
        r1a0: u288 {
            limb0: 0x5f097a3dbdeb0819d1861c45,
            limb1: 0xf08409cc10c36e667b39438b,
            limb2: 0x149809342db5fb73
        },
        r1a1: u288 {
            limb0: 0x22abebd243229022975d6272,
            limb1: 0x63fae19486bb2644ab7ffcf7,
            limb2: 0x1e21fbc321ec96d0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9c963c4bdade6ce3d460b077,
            limb1: 0x1738311feefc76f565e34e8a,
            limb2: 0x1aae0d6c9e9888ad
        },
        r0a1: u288 {
            limb0: 0x9272581fdf80b045c9c3f0a,
            limb1: 0x3946807b0756e87666798edb,
            limb2: 0x2bf6eeda2d8be192
        },
        r1a0: u288 {
            limb0: 0x3e957661b35995552fb475de,
            limb1: 0xd8076fa48f93f09d8128a2a8,
            limb2: 0xb6f87c3f00a6fcf
        },
        r1a1: u288 {
            limb0: 0xcf17d6cd2101301246a8f264,
            limb1: 0x514d04ad989b91e697aa5a0e,
            limb2: 0x175f17bbd0ad1219
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x894bc18cc70ca1987e3b8f9f,
            limb1: 0xd4bfa535181f0f8659b063e3,
            limb2: 0x19168d524164f463
        },
        r0a1: u288 {
            limb0: 0x850ee8d0e9b58b82719a6e92,
            limb1: 0x9fc4eb75cbb027c137d48341,
            limb2: 0x2b2f8a383d944fa0
        },
        r1a0: u288 {
            limb0: 0x5451c8974a709483c2b07fbd,
            limb1: 0xd7e09837b8a2a3b78e7fe525,
            limb2: 0x347d96be5e7fa31
        },
        r1a1: u288 {
            limb0: 0x823f2ba2743ee254e4c18a1e,
            limb1: 0x6a61af5db035c443ed0f8172,
            limb2: 0x1e840eee275d1063
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfb6f9ff9fefd86eb23508ff1,
            limb1: 0xef6bfd37a6332db481146e32,
            limb2: 0x1a35c151b2a62329
        },
        r0a1: u288 {
            limb0: 0xc9dc1b73d2d99d2197276418,
            limb1: 0xf2021624160aec118f7324f9,
            limb2: 0x176cc1dd4b8b92e4
        },
        r1a0: u288 {
            limb0: 0xb51f68724bad1bdf5922b4d0,
            limb1: 0x770b29b9b62d17c91223eee,
            limb2: 0x16fb7eaf4c491084
        },
        r1a1: u288 {
            limb0: 0xc097c9bd4b284edc91332e41,
            limb1: 0xe7ce2089d4a6359ffebd2a49,
            limb2: 0x9979e43cba82f42
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa1353621a2558adce2ddf8f2,
            limb1: 0x4d33af522e94a8201823528b,
            limb2: 0x44667189083c36c
        },
        r0a1: u288 {
            limb0: 0xfb2cf6b98b3c72755e2860e9,
            limb1: 0x3b0dde9ada7a4846e4ee308f,
            limb2: 0x90b1c71d144b982
        },
        r1a0: u288 {
            limb0: 0xbc4362be509872cf921cc071,
            limb1: 0xb49992c5e1d4a2d21da7b68b,
            limb2: 0xe964f5a3712d1b3
        },
        r1a1: u288 {
            limb0: 0xe77346dd0c0865a482056c59,
            limb1: 0x79ac1808dcb0d3d8241fca5b,
            limb2: 0x2e20df36461c0e78
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x18d630598e58bb5d0102b30e,
            limb1: 0x9767e27b02a8da37411a2787,
            limb2: 0x100a541662b9cd7c
        },
        r0a1: u288 {
            limb0: 0x4ca7313df2e168e7e5ea70,
            limb1: 0xd49cce6abd50b574f31c2d72,
            limb2: 0x78a2afbf72317e7
        },
        r1a0: u288 {
            limb0: 0x6d99388b0a1a67d6b48d87e0,
            limb1: 0x1d8711d321a193be3333bc68,
            limb2: 0x27e76de53a010ce1
        },
        r1a1: u288 {
            limb0: 0x77341bf4e1605e982fa50abd,
            limb1: 0xc5cf10db170b4feaaf5f8f1b,
            limb2: 0x762adef02274807
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6654b857066162c79833a71,
            limb1: 0x247dfdbd4981ac25907d2623,
            limb2: 0x7ca72a5eb9881fc
        },
        r0a1: u288 {
            limb0: 0xbff9d907f7db8a7e1f85d49,
            limb1: 0x8d8b3c0b96b9526729e6f3f,
            limb2: 0x1fd02521565c88b9
        },
        r1a0: u288 {
            limb0: 0xdf4b064b7aa8158b3e029a14,
            limb1: 0x9e37c19498abf43d5b5e2a55,
            limb2: 0x2ef3fce120f4091c
        },
        r1a1: u288 {
            limb0: 0xc7e1a1edabe44a8075221b6c,
            limb1: 0x9af1191217bea17800f1fc92,
            limb2: 0x304b37adf54995df
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa137b991ba9048aee9fa0bc7,
            limb1: 0xf5433785c186cd1100ab6b80,
            limb2: 0xab519fd7cf8e7f9
        },
        r0a1: u288 {
            limb0: 0x90832f45d3398c60aa1a74e2,
            limb1: 0x17f7ac209532723f22a344b,
            limb2: 0x23db979f8481c5f
        },
        r1a0: u288 {
            limb0: 0x723b0e23c2808a5d1ea6b11d,
            limb1: 0x3030030d26411f84235c3af5,
            limb2: 0x122e78da5509eddb
        },
        r1a1: u288 {
            limb0: 0xf1718c1e21a9bc3ec822f319,
            limb1: 0xf5ee6dfa3bd3272b2f09f0c7,
            limb2: 0x5a29c1e27616b34
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x28b9920636f62d437d1a5d8b,
            limb1: 0xf470749a76f743f188fbc91b,
            limb2: 0x9e471e78400c74e
        },
        r0a1: u288 {
            limb0: 0x5143b54c76db017a67a2c807,
            limb1: 0xe4e6798205d91fc6eb7214d3,
            limb2: 0x235374e6bbd6f750
        },
        r1a0: u288 {
            limb0: 0x5ab2caaaa3a048399c3b0de4,
            limb1: 0x12673d0706b950b688fdc1f1,
            limb2: 0x28aa92bdd9d01681
        },
        r1a1: u288 {
            limb0: 0xd6b2c49ce88c00f23de7df2a,
            limb1: 0x51b40faa81a9ef200f11d259,
            limb2: 0x53597a43d8a70e9
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbc1ede480873fceb8739511e,
            limb1: 0xd5a60533bd0ce7869efbc15,
            limb2: 0x182c17d793eba74d
        },
        r0a1: u288 {
            limb0: 0x83bf38d91876ad8999516bc2,
            limb1: 0x7756322ea3dc079289d51f2d,
            limb2: 0x1d0f6156a89a4244
        },
        r1a0: u288 {
            limb0: 0x6aba652f197be8f99707b88c,
            limb1: 0xbf94286c245794ea0f562f32,
            limb2: 0x25a358967a2ca81d
        },
        r1a1: u288 {
            limb0: 0xc028cbff48c01433e8b23568,
            limb1: 0xd2e791f5772ed43b056beba1,
            limb2: 0x83eb38dff4960e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x42443cc8f83d26caa2f010e1,
            limb1: 0xab0887172033a2d2d749dd46,
            limb2: 0x1f33119d266d0f10
        },
        r0a1: u288 {
            limb0: 0x6653e98ddda7cea4e17f076,
            limb1: 0x80b0234fcfb0d7a509b4fc08,
            limb2: 0x15683e10c4b6cb19
        },
        r1a0: u288 {
            limb0: 0xb7c07168f66173c3972c1eb,
            limb1: 0xbdc4d6ecbae2ae002a3ac5a0,
            limb2: 0x1cf2cf8e121dbbd2
        },
        r1a1: u288 {
            limb0: 0x88ec730a0901d8910b889da0,
            limb1: 0xe8b4d8943fd3e919fbbb7298,
            limb2: 0x1c07b149f5d2e025
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc2a2b787d8e718e81970db80,
            limb1: 0x5372abeaf56844dee60d6198,
            limb2: 0x131210153a2217d6
        },
        r0a1: u288 {
            limb0: 0x70421980313e09a8a0e5a82d,
            limb1: 0xf75ca1f68f4b8deafb1d3b48,
            limb2: 0x102113c9b6feb035
        },
        r1a0: u288 {
            limb0: 0x4654c11d73bda84873de9b86,
            limb1: 0xa67601bca2e595339833191a,
            limb2: 0x1c2b76e439adc8cc
        },
        r1a1: u288 {
            limb0: 0x9c53a48cc66c1f4d644105f2,
            limb1: 0xa17a18867557d96fb7c2f849,
            limb2: 0x1deb99799bd8b63a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc32026c56341297fa080790c,
            limb1: 0xe23ad2ff283399133533b31f,
            limb2: 0xa6860f5c968f7ad
        },
        r0a1: u288 {
            limb0: 0x2966cf259dc612c6a4d8957d,
            limb1: 0xfba87ea86054f3db5774a08f,
            limb2: 0xc73408b6a646780
        },
        r1a0: u288 {
            limb0: 0x6272ce5976d8eeba08f66b48,
            limb1: 0x7dfbd78fa06509604c0cec8d,
            limb2: 0x181ec0eaa6660e45
        },
        r1a1: u288 {
            limb0: 0x48af37c1a2343555fbf8a357,
            limb1: 0xa7b5e1e20e64d6a9a9ce8e61,
            limb2: 0x1147dcea39a47abd
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8466e29790bbe10db460c4ec,
            limb1: 0xcc8e432ade5422da0a07ab55,
            limb2: 0x1ca9856810c91a98
        },
        r0a1: u288 {
            limb0: 0x5304a33b7be078fdbb4f2aa7,
            limb1: 0x4daab0f2823389e8483aed0b,
            limb2: 0x2dc59478672d73b9
        },
        r1a0: u288 {
            limb0: 0x6a8a8833008a70a69982d186,
            limb1: 0xd819d06b9b4cc63b69be322e,
            limb2: 0x7d2dd0928636a75
        },
        r1a1: u288 {
            limb0: 0xd1273d3c50c2cad130d45a92,
            limb1: 0xfec31130dc70326496ae6ea0,
            limb2: 0x2d88bb71dbe54d3f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xffac3f7a7a68fb0747370ce2,
            limb1: 0x9d7930182711d840e3ff7b1b,
            limb2: 0x150b882c3ffbf437
        },
        r0a1: u288 {
            limb0: 0x57962fc0c4b0834e1a49deba,
            limb1: 0x525bb5a9c2c105290a104045,
            limb2: 0x2638c2d6e82b0e4e
        },
        r1a0: u288 {
            limb0: 0x4a51d172a12a50a919901f95,
            limb1: 0xf4956b61ae7ad677b3510d14,
            limb2: 0x1134f17b39b15f81
        },
        r1a1: u288 {
            limb0: 0xb40ebcfc52f3e198d9a6e6f,
            limb1: 0x56583b1f713f21fad0e3b4fc,
            limb2: 0x29756b01b80cf3a7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4033c51e6e469818521cd2ae,
            limb1: 0xb71a4629a4696b2759f8e19e,
            limb2: 0x4f5744e29c1eb30
        },
        r0a1: u288 {
            limb0: 0xa4f47bbc60cb0649dca1c772,
            limb1: 0x835f427106f4a6b897c6cf23,
            limb2: 0x17ca6ea4855756bb
        },
        r1a0: u288 {
            limb0: 0x7f844a35c7eeadf511e67e57,
            limb1: 0x8bb54fb0b3688cac8860f10,
            limb2: 0x1c7258499a6bbebf
        },
        r1a1: u288 {
            limb0: 0x10d269c1779f96946e518246,
            limb1: 0xce6fcef6676d0dacd395dc1a,
            limb2: 0x2cf4c6ae1b55d87d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x54dd6ef9c45b8b4ab696ca99,
            limb1: 0x71fa57eb34c2efb6314c3b5a,
            limb2: 0x28420cff4da0195
        },
        r0a1: u288 {
            limb0: 0x75288a45c44d1450beec6188,
            limb1: 0xba4b304f81b7c90b579a8e3d,
            limb2: 0x2fab386c6c4752c2
        },
        r1a0: u288 {
            limb0: 0x8a4c95d5e7e155aa0ad3f562,
            limb1: 0xa3ea9261c23be9ca95e10b46,
            limb2: 0xf04813763454457
        },
        r1a1: u288 {
            limb0: 0x211dd02044f3e3a436935c3b,
            limb1: 0xfdd0e82041a70288260436b4,
            limb2: 0x1d72c3545a826ac4
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xab74a6bae36b17b1d2cc1081,
            limb1: 0x904cf03d9d30b1fe9dc71374,
            limb2: 0x14ffdd55685b7d82
        },
        r0a1: u288 {
            limb0: 0x277f7180b7cf33feded1583c,
            limb1: 0xc029c3968a75b612303c4298,
            limb2: 0x20ef4ba03605cdc6
        },
        r1a0: u288 {
            limb0: 0xd5a7a27c1baba3791ab18957,
            limb1: 0x973730213d5d70d3e62d6db,
            limb2: 0x24ca121c566eb857
        },
        r1a1: u288 {
            limb0: 0x9f4c2dea0492f548ae7d9e93,
            limb1: 0xe584b6b251a5227c70c5188,
            limb2: 0x22bcecac2bd5e51b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x340c82974f7221a53fc2f3ac,
            limb1: 0x7146f18cd591d423874996e7,
            limb2: 0xa6d154791056f46
        },
        r0a1: u288 {
            limb0: 0x70894ea6418890d53b5ee12a,
            limb1: 0x882290cb53b795b0e7c8c208,
            limb2: 0x1b5777dc18b2899b
        },
        r1a0: u288 {
            limb0: 0x99a0e528d582006a626206b6,
            limb1: 0xb1cf825d80e199c5c9c795b5,
            limb2: 0x2a97495b032f0542
        },
        r1a1: u288 {
            limb0: 0xc7cf5b455d6f3ba73debeba5,
            limb1: 0xbb0a01235687223b7b71d0e5,
            limb2: 0x250024ac44c35e3f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x603b2a325f3a49535dd92e04,
            limb1: 0x97e6f68e30e1c3e58f1208fb,
            limb2: 0x2e00e9ce52cb7803
        },
        r0a1: u288 {
            limb0: 0x7d01655291cdab28916eeef0,
            limb1: 0x7e9d2dccb7b0ff99f08e7201,
            limb2: 0x105498ef1bdd0cff
        },
        r1a0: u288 {
            limb0: 0xf35ca525b326211de2610049,
            limb1: 0x49d7c506ded40402baf28963,
            limb2: 0x692faf74be30326
        },
        r1a1: u288 {
            limb0: 0xa00fefbff23ca3fd1d6074cf,
            limb1: 0xc5d23e12fe0ced80cf3f857f,
            limb2: 0x195031a5ec8f556f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xee780d73384a275959cfc5b9,
            limb1: 0x3febaa78c3586f49a7fec3db,
            limb2: 0x155d255ee62caf17
        },
        r0a1: u288 {
            limb0: 0x6f0c283e48ff9e207477f346,
            limb1: 0x921080a33d19f169ed5bbd0e,
            limb2: 0x24dcee25a575238a
        },
        r1a0: u288 {
            limb0: 0x2277ea8cd8fc6e07efa77220,
            limb1: 0x502c1166c4bae24d4d12e448,
            limb2: 0x27c11f229c03f718
        },
        r1a1: u288 {
            limb0: 0xbe2b413e72b998f55b258890,
            limb1: 0xe4be18f6f729cb58d5c3fd7e,
            limb2: 0xb4f257ad86ee172
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xccf841cf5c1cf8f4a0485e28,
            limb1: 0xb5077662d0ce9d755af1446b,
            limb2: 0x2b08658e9d5ba5cb
        },
        r0a1: u288 {
            limb0: 0x6ce62184a15685babd77f27f,
            limb1: 0x5ff9bb7d74505b0542578299,
            limb2: 0x7244563488bab2
        },
        r1a0: u288 {
            limb0: 0xec778048d344ac71275d961d,
            limb1: 0x1273984019753000ad890d33,
            limb2: 0x27c2855e60d361bd
        },
        r1a1: u288 {
            limb0: 0xa7a0071e22af2f3a79a12da,
            limb1: 0xc84a6fd41c20759ff6ff169a,
            limb2: 0x23e7ef2a308e49d1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd28c015d412be301e5631573,
            limb1: 0x9c8cec37cf276eeb87d2aa2d,
            limb2: 0x29a3fc335faa5d59
        },
        r0a1: u288 {
            limb0: 0xfa5bd0465be867cce579c9dc,
            limb1: 0x791d0ac4532e63dbfc65f22c,
            limb2: 0x1470b8ebef26538d
        },
        r1a0: u288 {
            limb0: 0x1ffabfa87c8779feb200506d,
            limb1: 0x9b17b5e60956175e82c41857,
            limb2: 0x8dec40a34d8ced5
        },
        r1a1: u288 {
            limb0: 0xea5b70a9e98a4749bcc16c78,
            limb1: 0x500d8d81cdd3acd51c3d865f,
            limb2: 0x25bac99506127858
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7105024c431a33683d9d0b9d,
            limb1: 0x12e23637b641ab0e5b322ad8,
            limb2: 0x2918e9e08c764c28
        },
        r0a1: u288 {
            limb0: 0x26384979d1f5417e451aeabf,
            limb1: 0xacfb499e362291d0b053bbf6,
            limb2: 0x2a6ad1a1f7b04ef6
        },
        r1a0: u288 {
            limb0: 0xba4db515be70c384080fc9f9,
            limb1: 0x5a983a6afa9cb830fa5b66e6,
            limb2: 0x8cc1fa494726a0c
        },
        r1a1: u288 {
            limb0: 0x59c9af9399ed004284eb6105,
            limb1: 0xef37f66b058b4c971d9c96b0,
            limb2: 0x2c1839afde65bafa
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ddbe998e8611c64dc431179,
            limb1: 0xe03db1cbd888d5ee5d5f572a,
            limb2: 0x21ba85619a219fd5
        },
        r0a1: u288 {
            limb0: 0xe7cd8a2a0e2f5170561cbe09,
            limb1: 0x3f16f6daffe7e7638ff7f615,
            limb2: 0x1f6038ec124f20ec
        },
        r1a0: u288 {
            limb0: 0xc0edffdf2f3dd67cca9d4319,
            limb1: 0x4406dcfaf60e64ceb7bd99a3,
            limb2: 0x2897a1e663c26151
        },
        r1a1: u288 {
            limb0: 0x4be898e76b9ca5db3a1f2a2b,
            limb1: 0x12ab79ebcc046e374129ea8b,
            limb2: 0x28e4d29921424f31
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6bf13a27b0f4eb6657abc4b,
            limb1: 0xf78d57f089bffdf07c676bb3,
            limb2: 0x228e4aefbdd738df
        },
        r0a1: u288 {
            limb0: 0x4f41a40b04ec964619823053,
            limb1: 0xfa3fb44f4a80641a9bb3bc09,
            limb2: 0x29bf29a3d071ec4b
        },
        r1a0: u288 {
            limb0: 0x83823dcdff02bdc8a0e6aa03,
            limb1: 0x79ac92f113de29251cd73a98,
            limb2: 0x1ccdb791718d144
        },
        r1a1: u288 {
            limb0: 0xa074add9d066db9a2a6046b6,
            limb1: 0xef3a70034497456c7d001a5,
            limb2: 0x27d09562d815b4a6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1b77b24dd8b2590dc67b0dfc,
            limb1: 0x581ecc980ea5715fe0645b55,
            limb2: 0x219c1e209e79acf9
        },
        r0a1: u288 {
            limb0: 0xddf811e9df43f878f8d891a4,
            limb1: 0xab60072d431cc50eba8961c1,
            limb2: 0x305f6336bea4a8a1
        },
        r1a0: u288 {
            limb0: 0x9b01ddbd7db4bc066bd398de,
            limb1: 0x9ebc7e779dd2558da31bc0d7,
            limb2: 0x2c292780ca49f9f
        },
        r1a1: u288 {
            limb0: 0x6cd859cf443ffa6c1b1c8c41,
            limb1: 0x3cebd882e50651ddde064e05,
            limb2: 0x2ef5e8ed4cad0979
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x87a44d343cc761056f4f2eae,
            limb1: 0x18016f16818253360d2c8adf,
            limb2: 0x1bcd5c6e597d735e
        },
        r0a1: u288 {
            limb0: 0x593d7444c376f6d69289660b,
            limb1: 0x1d6d97020b59cf2e4b38be4f,
            limb2: 0x17133b62617f63a7
        },
        r1a0: u288 {
            limb0: 0x88cac99869bb335ec9553a70,
            limb1: 0x95bcfa7f7c0b708b4d737afc,
            limb2: 0x1eec79b9db274c09
        },
        r1a1: u288 {
            limb0: 0xe465a53e9fe085eb58a6be75,
            limb1: 0x868e45cc13e7fd9d34e11839,
            limb2: 0x2b401ce0f05ee6bb
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x83f48fbac5c1b94486c2d037,
            limb1: 0xf95d9333449543de78c69e75,
            limb2: 0x7bca8163e842be7
        },
        r0a1: u288 {
            limb0: 0x60157b2ff6e4d737e2dac26b,
            limb1: 0x30ab91893fcf39d9dcf1b89,
            limb2: 0x29a58a02490d7f53
        },
        r1a0: u288 {
            limb0: 0x520f9cb580066bcf2ce872db,
            limb1: 0x24a6e42c185fd36abb66c4ba,
            limb2: 0x309b07583317a13
        },
        r1a1: u288 {
            limb0: 0x5a4c61efaa3d09a652c72471,
            limb1: 0xfcb2676d6aa28ca318519d2,
            limb2: 0x1405483699afa209
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x443a4e541e2bab8059810bbf,
            limb1: 0xe4033495a79ec546bc112cf7,
            limb2: 0x270869c278543aee
        },
        r0a1: u288 {
            limb0: 0xbdb5f99745a403f94c878ea0,
            limb1: 0xe5e720cb80d44eba318d24e5,
            limb2: 0x2b09766d7a6b88c
        },
        r1a0: u288 {
            limb0: 0x3bce33a2113ffd51222619dd,
            limb1: 0x245fd77bd4bf1e32238cb76,
            limb2: 0x22338bd89da1dfde
        },
        r1a1: u288 {
            limb0: 0x7c10b5c572c1350d8b28c6fc,
            limb1: 0x54c0b83ecfc0343f72fcb0b5,
            limb2: 0x1bdff09f566246b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x32213b55a0ce35f066de2588,
            limb1: 0x7d585f7124ece0b76a19269a,
            limb2: 0x11efe58f316be935
        },
        r0a1: u288 {
            limb0: 0xca26b2ad753c9c2f9c1d299d,
            limb1: 0xf7c2641d2a1949e8cf1343b2,
            limb2: 0x121cb0024433e926
        },
        r1a0: u288 {
            limb0: 0x966cbe6a7d0e4594fa58ad60,
            limb1: 0xd00b1e40fa72a000ea4dd797,
            limb2: 0x17617a73ae0fdc0e
        },
        r1a1: u288 {
            limb0: 0xb5be5854e1e2c09a7b853e0f,
            limb1: 0xfda7f94906d26b981389e72,
            limb2: 0x21b8b080981b3c55
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbfdfdae86101e29da3e869b8,
            limb1: 0xf969a9b961a28b872e56aac2,
            limb2: 0x1afdc719440d90f0
        },
        r0a1: u288 {
            limb0: 0xee43c995686f13baa9b07266,
            limb1: 0xbfa387a694c641cceee4443a,
            limb2: 0x104d8c02eb7f60c8
        },
        r1a0: u288 {
            limb0: 0x8d451602b3593e798aecd7fb,
            limb1: 0x69ffbefe7c5ac2cf68e8691e,
            limb2: 0x2ea064a1bc373d28
        },
        r1a1: u288 {
            limb0: 0x6e7a663073bfe88a2b02326f,
            limb1: 0x5faadb36847ca0103793fa4a,
            limb2: 0x26c09a8ec9303836
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4302d0f38de18209bc275229,
            limb1: 0xc1ab7b5fdcaf5276ce7a1054,
            limb2: 0x1ee3a334e035a8a9
        },
        r0a1: u288 {
            limb0: 0x8d63a830460a7fc0a08a3508,
            limb1: 0x259b5002f23ab70910f89f6,
            limb2: 0xf32ff591603a4dc
        },
        r1a0: u288 {
            limb0: 0xce4c49c8dca4c569eb7f5728,
            limb1: 0xb057f364be425e9e0733290f,
            limb2: 0x1a1b81338413eed4
        },
        r1a1: u288 {
            limb0: 0xb8cce25462765e1d48de4647,
            limb1: 0xcd61e3a43b764fe1066ed3f7,
            limb2: 0x7c7bff47baf9d4e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3d038747ebac16adc1c50bdd,
            limb1: 0xe3706a783e99f73ac742aa1a,
            limb2: 0x17eac23b00b545ff
        },
        r0a1: u288 {
            limb0: 0xdc25ff0bd02abcbe502c4e37,
            limb1: 0x39b92e6ebb65e5f2d8504f90,
            limb2: 0x2415b5f61301dff6
        },
        r1a0: u288 {
            limb0: 0x9cdcb2146d15f37900db82ac,
            limb1: 0x96c3940e2f5c5f8198fadee3,
            limb2: 0x2f662ea79b473fc2
        },
        r1a1: u288 {
            limb0: 0xc0fb95686de65e504ed4c57a,
            limb1: 0xec396c7c4275d4e493b00713,
            limb2: 0x106d2aab8d90d517
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xad007ad6bb8a2b980543bd69,
            limb1: 0xacacafd6aa86577561a667f7,
            limb2: 0x2578f68872cc0f2b
        },
        r0a1: u288 {
            limb0: 0xb9690901512002d33c4842df,
            limb1: 0x947e0af7176ffbf05e764471,
            limb2: 0x2869992eb916142
        },
        r1a0: u288 {
            limb0: 0xc4cb8db0287583b598b49d43,
            limb1: 0x75755f9036656b69b93c0f5b,
            limb2: 0x2e547c62d947bee
        },
        r1a1: u288 {
            limb0: 0xece85f8434e462acc11b333f,
            limb1: 0xe1d9e7fad77b630811646fc1,
            limb2: 0x97bd8c068893e64
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49bbb4d856921e3177c0b5bf,
            limb1: 0x76d84d273694e662bdd5d364,
            limb2: 0xea5dc611bdd369d
        },
        r0a1: u288 {
            limb0: 0x9e9fc3adc530fa3c5c6fd7fe,
            limb1: 0x114bb0c0e8bd247da41b3883,
            limb2: 0x6044124f85d2ce
        },
        r1a0: u288 {
            limb0: 0xa6e604cdb4e40982a97c084,
            limb1: 0xef485caa56c7820be2f6b11d,
            limb2: 0x280de6387dcbabe1
        },
        r1a1: u288 {
            limb0: 0xcaceaf6df5ca9f8a18bf2e1e,
            limb1: 0xc5cce932cc6818b53136c142,
            limb2: 0x12f1cd688682030c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x37497c23dcf629df58a5fa12,
            limb1: 0x4fcd5534ae47bded76245ac9,
            limb2: 0x1715ab081e32ac95
        },
        r0a1: u288 {
            limb0: 0x856275471989e2c288e3c83,
            limb1: 0xb42d81a575b89b127a7821a,
            limb2: 0x5fa75a0e4ae3118
        },
        r1a0: u288 {
            limb0: 0xeb22351e8cd345c23c0a3fef,
            limb1: 0x271feb16d4b47d2267ac9d57,
            limb2: 0x258f9950b9a2dee5
        },
        r1a1: u288 {
            limb0: 0xb5f75468922dc025ba7916fa,
            limb1: 0x7e24515de90edf1bde4edd9,
            limb2: 0x289145b3512d4d81
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe6d5f0fedfec62e2335d2dd8,
            limb1: 0x7cb443ce2a094d20968d2fea,
            limb2: 0x8cdde0c8fd1c437
        },
        r0a1: u288 {
            limb0: 0x38c6b96edcda23963ae0052c,
            limb1: 0xe7c82fe1e43ea9e4c688ce54,
            limb2: 0x8ef597f7bb15bb5
        },
        r1a0: u288 {
            limb0: 0xbb19c3abd0ec674dba6b939d,
            limb1: 0x8ea8cb14b7e14b9011e9ad8d,
            limb2: 0x2c91f8ac1c60c82d
        },
        r1a1: u288 {
            limb0: 0xd7f7f5b330e59b2fcf194703,
            limb1: 0xa460de3349acbb41b8028e2f,
            limb2: 0x7b57de139ccd317
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x42c48d1cd38079caae0ecb8b,
            limb1: 0x5b1876de39a4f63329345e7e,
            limb2: 0x1a5dac473b8e6dc8
        },
        r0a1: u288 {
            limb0: 0xe4a0214abd49e21e621418d3,
            limb1: 0x507cbddf84f610170d694dab,
            limb2: 0x1f5bf97c6bd07f08
        },
        r1a0: u288 {
            limb0: 0x9c8a87821986f9a068333eed,
            limb1: 0xbcb68ff09179da99d350b8f,
            limb2: 0x832163aea1664ab
        },
        r1a1: u288 {
            limb0: 0xf75ff9bc922dcd4d3d8d484f,
            limb1: 0x61cb8d744c6355d9c90b0cab,
            limb2: 0x7d12705fef5c851
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x95b7b32bcc3119c64a62a8de,
            limb1: 0xe07184496f17bbd59a4b7bbd,
            limb2: 0x1708c536fd78b531
        },
        r0a1: u288 {
            limb0: 0xfa85b5778c77166c1523a75e,
            limb1: 0x89a00c53309a9e525bef171a,
            limb2: 0x2d2287dd024e421
        },
        r1a0: u288 {
            limb0: 0x31fd0884eaf2208bf8831e72,
            limb1: 0x537e04ea344beb57ee645026,
            limb2: 0x23c7f99715257261
        },
        r1a1: u288 {
            limb0: 0x8c38b3aeea525f3c2d2fdc22,
            limb1: 0xf838a99d9ec8ed6dcec6a2a8,
            limb2: 0x2973d5159ddc479a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3f058d8c63fd905d3ca29b42,
            limb1: 0x1f0a90982cc68e4ddcd83e57,
            limb2: 0x240aeaae0783fbfa
        },
        r0a1: u288 {
            limb0: 0xedfee81d80da310fdf0d0d8,
            limb1: 0xc2208e6de8806cf491bd74d4,
            limb2: 0xb7318be62a476af
        },
        r1a0: u288 {
            limb0: 0x3c6920c8a24454c634f388fe,
            limb1: 0x23328a006312a722ae09548b,
            limb2: 0x1d2f1c58b80432e2
        },
        r1a1: u288 {
            limb0: 0xb72980574f7a877586de3a63,
            limb1: 0xcd773b87ef4a29c16784c5ae,
            limb2: 0x1f812c7e22f339c5
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd7d073e5e6a8cd911a468bb,
            limb1: 0x95ee59a071561dcb4ada3bc2,
            limb2: 0x2e261c2e2a427dbf
        },
        r0a1: u288 {
            limb0: 0x8a47cd0a06dd97ca5e4f39a5,
            limb1: 0x4cb0cc584ea9ba4e9be21bdf,
            limb2: 0x2146eec38b7789e2
        },
        r1a0: u288 {
            limb0: 0x35f2b6c7f2cc0e606566a490,
            limb1: 0x11559a109d5c6435ce046b0c,
            limb2: 0x6248e3295d7cf82
        },
        r1a1: u288 {
            limb0: 0x7f15bb62559ecfca209f4bf,
            limb1: 0x41d18815fcacbad5a02a06c3,
            limb2: 0x3295e212b7a8f31
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x94d949d2824bed87f80133f6,
            limb1: 0xf98d12311a0588eb2be53426,
            limb2: 0x1a2fabf8a8c385fc
        },
        r0a1: u288 {
            limb0: 0xc1670565853a663012023f78,
            limb1: 0x19ada84d8bcb43e12a84aa7d,
            limb2: 0x2f162aabdae0184b
        },
        r1a0: u288 {
            limb0: 0xfc6f0b2cc52123e9979e51b9,
            limb1: 0x41f9c46794556cff6a7aacda,
            limb2: 0x10a0d9f326fddec4
        },
        r1a1: u288 {
            limb0: 0x83407d99d721883c3baf7794,
            limb1: 0xb2e5f2748620adf22aa59d31,
            limb2: 0x12173c1cdd83c43f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfeebe92941f95b6ea1d095bb,
            limb1: 0x9c7962eb8bbeb95a9ca7cf50,
            limb2: 0x290bdaf3b9a08dc3
        },
        r0a1: u288 {
            limb0: 0x686cfa11c9d4b93675495599,
            limb1: 0xb1d69e17b4b5ebf64f0d51e1,
            limb2: 0x2c18bb4bdc2e9567
        },
        r1a0: u288 {
            limb0: 0x17419b0f6a04bfc98d71527,
            limb1: 0x80eba6ff02787e3de964a4d1,
            limb2: 0x26087bb100e7ff9f
        },
        r1a1: u288 {
            limb0: 0x17c4ee42c3f612c43a08f689,
            limb1: 0x7276bdda2df6d51a291dba69,
            limb2: 0x40a7220ddb393e1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb73e1392416bbd06c604bbad,
            limb1: 0xc438f2ef9f834e814bc60632,
            limb2: 0x98dab80c8991ff3
        },
        r0a1: u288 {
            limb0: 0xf7591e58a604e962c6d62205,
            limb1: 0x4c9ec60073f615c85e34114c,
            limb2: 0x225a6b29a6cfed6c
        },
        r1a0: u288 {
            limb0: 0xfe2544fd534948d7e27c55a6,
            limb1: 0xdf80b78b4c0c47c2d81128ca,
            limb2: 0x219457efcf6afc63
        },
        r1a1: u288 {
            limb0: 0x20ac44f68c50588a414f4cca,
            limb1: 0x3991539701b9d6297f5c2f45,
            limb2: 0x101e2cf938bc3836
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x830d777c19040571a1d72fd0,
            limb1: 0x651b2c6b8c292020817a633f,
            limb2: 0x268af1e285bc59ff
        },
        r0a1: u288 {
            limb0: 0xede78baa381c5bce077f443d,
            limb1: 0x540ff96bae21cd8b9ae5438b,
            limb2: 0x12a1fa7e3b369242
        },
        r1a0: u288 {
            limb0: 0x797c0608e5a535d8736d4bc5,
            limb1: 0x375faf00f1147656b7c1075f,
            limb2: 0xda60fab2dc5a639
        },
        r1a1: u288 {
            limb0: 0x610d26085cfbebdb30ce476e,
            limb1: 0x5bc55890ff076827a09e8444,
            limb2: 0x14272ee2d25f20b7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeb9fefb6a60e73f14730252d,
            limb1: 0x78c8b5595f671611ef4c323e,
            limb2: 0x2352293caca24dfa
        },
        r0a1: u288 {
            limb0: 0x455e1e32a864e527a1d661e,
            limb1: 0xbedbaadcc322ac3dfa22e26a,
            limb2: 0x26556b440a683b95
        },
        r1a0: u288 {
            limb0: 0xf68a9fcabc38181b04162d74,
            limb1: 0xec21268c49d09601c1b80b8c,
            limb2: 0x1ab7fdbc8951a41d
        },
        r1a1: u288 {
            limb0: 0xb846495f219b450ab90a0bdb,
            limb1: 0xad96bc9258e7f7eab895ce9,
            limb2: 0x5efa4dd251ea128
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd6862e1a4ca3b2baf6f8d8aa,
            limb1: 0x96f9066dded3a3d899025af4,
            limb2: 0x1a98af9f0d48fd3
        },
        r0a1: u288 {
            limb0: 0x276b417cc61ea259c114314e,
            limb1: 0x464399e5e0037b159866b246,
            limb2: 0x12cc97dcf32896b5
        },
        r1a0: u288 {
            limb0: 0xef72647f4c2d08fc038c4377,
            limb1: 0x34883cea19be9a490a93cf2b,
            limb2: 0x10d01394daa61ed0
        },
        r1a1: u288 {
            limb0: 0xdf345239ece3acaa62919643,
            limb1: 0x914780908ece64e763cca062,
            limb2: 0xee2a80dbd2012a3
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1d5a31f4d08a0ebf7e071e00,
            limb1: 0xcd1244dd95dd30005f531f81,
            limb2: 0xb4cb469a2dcf4f1
        },
        r0a1: u288 {
            limb0: 0x7c5938adaf38b355092de1f1,
            limb1: 0x292ab08995b293abfcba14b,
            limb2: 0x1fd126a2b9f37c67
        },
        r1a0: u288 {
            limb0: 0x6e9d352b02a7cb771fcc33f9,
            limb1: 0x7754d8536eefda2025a07340,
            limb2: 0x1840289291c35a72
        },
        r1a1: u288 {
            limb0: 0xe85f465417b7bd758c547b2e,
            limb1: 0xf7f703c3bc55ff8a01fa9365,
            limb2: 0xfa301227880a841
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x252f811d6634e90dab8c88a0,
            limb1: 0x2882b538a1ad961e8217c9b0,
            limb2: 0x1898aee637f366bd
        },
        r0a1: u288 {
            limb0: 0x1975156cda698d9fdfa778f4,
            limb1: 0xcb8619ba94b3a992e8ff6749,
            limb2: 0x139e3d4e7118857c
        },
        r1a0: u288 {
            limb0: 0x4255e871700929466df3d3f8,
            limb1: 0xc9d3db9831837f0b7186a98d,
            limb2: 0x2ada7fd949be7253
        },
        r1a1: u288 {
            limb0: 0x979999ee5b5ee442b7a86a3f,
            limb1: 0x46cc1c573f6575876834997d,
            limb2: 0x244785477d492c48
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x303816e9464ee56411f1e37,
            limb1: 0xa8c67707738cd20e8e207bb3,
            limb2: 0x1d59c9b61155f201
        },
        r0a1: u288 {
            limb0: 0x20acfdf927a4288aec2128f6,
            limb1: 0xfee0e536efa1d3acabe3c541,
            limb2: 0x24951276cf92f7d1
        },
        r1a0: u288 {
            limb0: 0x3c03f1c93488b60bfb31f037,
            limb1: 0x31cd841d7ebaf52cb473526a,
            limb2: 0x1cd16749386ce474
        },
        r1a1: u288 {
            limb0: 0x5479ab8547371be0c5a134a2,
            limb1: 0xe688cc1710c0c8f72b193772,
            limb2: 0x2d8190b2a885b714
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa4058149e82ea51362b79be4,
            limb1: 0x734eba2621918a820ae44684,
            limb2: 0x110a314a02272b1
        },
        r0a1: u288 {
            limb0: 0xe2b43963ef5055df3c249613,
            limb1: 0x409c246f762c0126a1b3b7b7,
            limb2: 0x19aa27f34ab03585
        },
        r1a0: u288 {
            limb0: 0x179aad5f620193f228031d62,
            limb1: 0x6ba32299b05f31b099a3ef0d,
            limb2: 0x157724be2a0a651f
        },
        r1a1: u288 {
            limb0: 0xa33b28d9a50300e4bbc99137,
            limb1: 0x262a51847049d9b4d8cea297,
            limb2: 0x189acb4571d50692
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x44acb2a2d8cba9d6720336ce,
            limb1: 0xc09449619d273374186e9b6a,
            limb2: 0x5d4677c8f57b354
        },
        r0a1: u288 {
            limb0: 0xd07ff5b4bad5be891b314e54,
            limb1: 0x39769739c2f9180f06a636e7,
            limb2: 0x1500096dca0d5abc
        },
        r1a0: u288 {
            limb0: 0xaef8175a62ef52c2ede864e1,
            limb1: 0xb987a05b293b6474128c4e63,
            limb2: 0x105a873c0fa50930
        },
        r1a1: u288 {
            limb0: 0x7bf7e89a35481e877c977926,
            limb1: 0xa3c702f804a7f10c24f67475,
            limb2: 0x2984a3a26a5fe4dd
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x29bd4381ae4afc677ee37ed6,
            limb1: 0x29ed43453f9a008d9176f004,
            limb2: 0x24134eb915104f43
        },
        r0a1: u288 {
            limb0: 0x81597f82bb67e90a3e72bdd2,
            limb1: 0xab3bbde5f7bbb4df6a6b5c19,
            limb2: 0x19ac61eea40a367c
        },
        r1a0: u288 {
            limb0: 0xe30a79342fb3199651aee2fa,
            limb1: 0xf500f028a73ab7b7db0104a3,
            limb2: 0x808b50e0ecb5e4d
        },
        r1a1: u288 {
            limb0: 0x55f2818453c31d942444d9d6,
            limb1: 0xf6dd80c71ab6e893f2cf48db,
            limb2: 0x13c3ac4488abd138
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xab8b7d22255efd02747680fc,
            limb1: 0xd06fbd25b356d5168625e605,
            limb2: 0xc604175b84d3f1
        },
        r0a1: u288 {
            limb0: 0xaa669bd01caad05fefd0e902,
            limb1: 0xe09ef7a58db1946daa2909f0,
            limb2: 0x27f067938c789128
        },
        r1a0: u288 {
            limb0: 0xd6b99ac84c40c2a80dbad9b7,
            limb1: 0x7ca8f4bf4abe9dcc2568bb9e,
            limb2: 0x295f8f1c84fbf5cc
        },
        r1a1: u288 {
            limb0: 0x36c5cd0c0d72a36bd46f304c,
            limb1: 0x9fd6051909f49a731cdd3981,
            limb2: 0x1c8fcf6feccb94fc
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd1464269bbeafa546f559b8f,
            limb1: 0xab7f7dcd1ac32b86979471cf,
            limb2: 0x6a38256ee96f113
        },
        r0a1: u288 {
            limb0: 0xf14d50984e65f9bc41df4e7e,
            limb1: 0x350aff9be6f9652ad441a3ad,
            limb2: 0x1b1e60534b0a6aba
        },
        r1a0: u288 {
            limb0: 0x9e98507da6cc50a56f023849,
            limb1: 0xcf8925e03f2bb5c1ba0962dd,
            limb2: 0x2b18961810a62f87
        },
        r1a1: u288 {
            limb0: 0x3a4c61b937d4573e3f2da299,
            limb1: 0x6f4c6c13fd90f4edc322796f,
            limb2: 0x13f4e99b6a2f025e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x67bb4289b4223f287e1c25bb,
            limb1: 0x89a160fd489c6ac665f0c910,
            limb2: 0x2049fb8a1c731e87
        },
        r0a1: u288 {
            limb0: 0x7317833bb0387a5ab4b6e488,
            limb1: 0x48dd430995223c2bb78f17f9,
            limb2: 0x299d46b22eae67d
        },
        r1a0: u288 {
            limb0: 0x27d12d6b1dc46bfeb924b796,
            limb1: 0xd34fd4b68a1f39665edfcf4,
            limb2: 0xa3efe6f6cc20547
        },
        r1a1: u288 {
            limb0: 0x3109eb076fe9d1d2102977dc,
            limb1: 0x74606ce4c7531d1de99bed36,
            limb2: 0x1c5207bb33934a9d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe0115a79120ae892a72f3dcb,
            limb1: 0xec67b5fc9ea414a4020135f,
            limb2: 0x1ee364e12321904a
        },
        r0a1: u288 {
            limb0: 0xa74d09666f9429c1f2041cd9,
            limb1: 0x57ffe0951f863dd0c1c2e97a,
            limb2: 0x154877b2d1908995
        },
        r1a0: u288 {
            limb0: 0xcbe5e4d2d2c91cdd4ccca0,
            limb1: 0xe6acea145563a04b2821d120,
            limb2: 0x18213221f2937afb
        },
        r1a1: u288 {
            limb0: 0xfe20afa6f6ddeb2cb768a5ae,
            limb1: 0x1a3b509131945337c3568fcf,
            limb2: 0x127b5788263a927e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x966fdc18e3d19b116336e881,
            limb1: 0x4ecdf092d64041c2e5347bb,
            limb2: 0x264d8e712b68ecd8
        },
        r0a1: u288 {
            limb0: 0x50668360ac5b914912a66e77,
            limb1: 0x2dfbccc59d1885708bb83f99,
            limb2: 0x2e15bde7efed979f
        },
        r1a0: u288 {
            limb0: 0xf283ba2637cb51b37f5d46cc,
            limb1: 0x740b6f4ef2e5d6d41577b390,
            limb2: 0x20d7e5418c16f16e
        },
        r1a1: u288 {
            limb0: 0xe51cbd03c0d7698a03aaf5c5,
            limb1: 0x157c88391605685e26e08047,
            limb2: 0x1e5e94356ff7c269
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe7c658aecdab4db3c83f7927,
            limb1: 0xfbf162264ca04ee50c70bde8,
            limb2: 0x2a20f4565b7ff885
        },
        r0a1: u288 {
            limb0: 0x45b1c2f0a1226361f42683c0,
            limb1: 0x9acdd892c48c08de047296bc,
            limb2: 0x27836373108925d4
        },
        r1a0: u288 {
            limb0: 0xc0ea9294b345e6d4892676a7,
            limb1: 0xcba74eca77086af245d1606e,
            limb2: 0xf20edac89053e72
        },
        r1a1: u288 {
            limb0: 0x4c92a28f2779a527a68a938c,
            limb1: 0x3a1c3c55ff9d20eac109fab3,
            limb2: 0x21c4a8c524b1ee7d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x727caf75d7a217473341b340,
            limb1: 0x4c67ed967f961fa3e8b92fe2,
            limb2: 0xd3c355d9bebe896
        },
        r0a1: u288 {
            limb0: 0x2a2fde9bbaf7d301553f84fa,
            limb1: 0xfeb40a5d7bbf11a79ad69447,
            limb2: 0x23437c0fad1b35c3
        },
        r1a0: u288 {
            limb0: 0x2cb2809bdcf58010184a8029,
            limb1: 0x9f2f6e1c3e4c5ea6a9c48614,
            limb2: 0x16d45b21aab76273
        },
        r1a1: u288 {
            limb0: 0xb7a2b04cf5359c9de93c6fe,
            limb1: 0x1e6a727ac4c6a181a3659ce7,
            limb2: 0xf975d8e6db103a0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa68021d593c46246af22559e,
            limb1: 0x5c2cfc5bc4cd1b48f4704134,
            limb2: 0x296066ede1298f8c
        },
        r0a1: u288 {
            limb0: 0xfe17dd6765eb9b9625eb6a84,
            limb1: 0x4e35dd8e8f6088bb14299f8d,
            limb2: 0x1a380ab2689106e4
        },
        r1a0: u288 {
            limb0: 0x82bacf337ca09853df42bc59,
            limb1: 0xa15de4ef34a30014c5a2e9ae,
            limb2: 0x243cc0cec53c778b
        },
        r1a1: u288 {
            limb0: 0xcb2a1bf18e3ba9349b0a8bf2,
            limb1: 0x35134b2505cbb5a4c91f0ac4,
            limb2: 0x25e45206b13f43c4
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8e97b007ffd9891bd0e77650,
            limb1: 0x77671278ac33f17df6b1db88,
            limb2: 0x243daddc47f5d5c2
        },
        r0a1: u288 {
            limb0: 0x655fe4c8bbe5ee06aaa0054b,
            limb1: 0xf751450b02c93c7ddea95938,
            limb2: 0x21aa988e950d563f
        },
        r1a0: u288 {
            limb0: 0xb51b3b6b8582de3eb0549518,
            limb1: 0x84a1031766b7e465f5bbf40c,
            limb2: 0xd46c2d5b95e5532
        },
        r1a1: u288 {
            limb0: 0x50b6ddd8a5eef0067652191e,
            limb1: 0x298832a0bc46ebed8bff6190,
            limb2: 0xb568b4fe8311f93
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe003bd068b60d0d49f3cb940,
            limb1: 0xc77e0cfe9e07151c1d6c1764,
            limb2: 0x135e13ffeb0031e
        },
        r0a1: u288 {
            limb0: 0x5d168b40bc44bab5664f9c4d,
            limb1: 0x15cdd95cab12c1695b34745e,
            limb2: 0x118d3d25d2f2e884
        },
        r1a0: u288 {
            limb0: 0x8b8c274f856c33072b5660f2,
            limb1: 0x224aa00aa769a3f9055bbb8d,
            limb2: 0x2d9729281b6e809
        },
        r1a1: u288 {
            limb0: 0x9b029a7e5af9a2d2945f9166,
            limb1: 0xdbb10483464daa99fdbe0f49,
            limb2: 0xaaa92d438d7ed1e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xafa283f7c748338e05819049,
            limb1: 0xc3861d1974a20aa903cb91c8,
            limb2: 0x2265b89f8a0605ef
        },
        r0a1: u288 {
            limb0: 0xd1078e24fdfff13a83871fc7,
            limb1: 0x494cb8d7a9f51dd3fc6da441,
            limb2: 0x2f5f8a988e2a6a4f
        },
        r1a0: u288 {
            limb0: 0xa415aee4fef4f9c43556fca9,
            limb1: 0xa76a98795602f5c993c5d06d,
            limb2: 0x1a1dda72404d0a93
        },
        r1a1: u288 {
            limb0: 0x98546eaa38439d60f8211706,
            limb1: 0xc1b4b715ccb84a2f16798fb7,
            limb2: 0x1ec958194378883d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xddb4db99db681d35f71a159c,
            limb1: 0xf71a330019414e6fdee75700,
            limb2: 0x14d9838e7d1918bb
        },
        r0a1: u288 {
            limb0: 0x203c8bac71951a5f2c653710,
            limb1: 0x9fc93f8da38ecc2957313982,
            limb2: 0x7b6d981259cabd9
        },
        r1a0: u288 {
            limb0: 0xa7297cdb5be0cc45d48ca6af,
            limb1: 0xa07b4b025ebe6c960eddfc56,
            limb2: 0xef2a5c30ef00652
        },
        r1a1: u288 {
            limb0: 0xb7f05c76d860e9122b36ecd7,
            limb1: 0x407d6522e1f9ce2bcbf80eda,
            limb2: 0x197625a558f32c36
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x35a4f5a45bb11083ffe7a6c7,
            limb1: 0xeb9204e403e4fe3a5865767d,
            limb2: 0x235011182f84be88
        },
        r0a1: u288 {
            limb0: 0x80ffd49b3d2ed0ce83e55023,
            limb1: 0x17d09ae6fbc331ad22da2c4c,
            limb2: 0x2f271b74882b71bd
        },
        r1a0: u288 {
            limb0: 0xf2a23da423528b1a932610cd,
            limb1: 0x283a8a8740de79c742af9d68,
            limb2: 0x19ee84560bb6df60
        },
        r1a1: u288 {
            limb0: 0x1d7dfe8a65edf6ac66b98593,
            limb1: 0xc70b362a4618be3fce148b6e,
            limb2: 0x138d02534ef3f9d6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb0f04df9dec94801e48a6ff7,
            limb1: 0xdc59d087c627d38334e5b969,
            limb2: 0x3d36e11420be053
        },
        r0a1: u288 {
            limb0: 0xc80f070001aa1586189e0215,
            limb1: 0xff849fcbbbe7c00c83ab5282,
            limb2: 0x2a2354b2882706a6
        },
        r1a0: u288 {
            limb0: 0x48cf70c80f08b6c7dc78adb2,
            limb1: 0xc6632efa77b36a4a1551d003,
            limb2: 0xc2d3533ece75879
        },
        r1a1: u288 {
            limb0: 0x63e82ba26617416a0b76ddaa,
            limb1: 0xdaceb24adda5a049bed29a50,
            limb2: 0x1a82061a3344043b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x79a97ffaa42fc6729be9c5c2,
            limb1: 0xeb6cd6d95a99ab984fd7850e,
            limb2: 0x281bb4b95d0b551d
        },
        r0a1: u288 {
            limb0: 0x76aebf94ac3405511c07e240,
            limb1: 0x33c8f9f7372bb591ef19745f,
            limb2: 0x281c087d56e17691
        },
        r1a0: u288 {
            limb0: 0x54e5d88bcbc7419e15443f91,
            limb1: 0xfc148307cadde47fe33b4e78,
            limb2: 0x5bbfd615922424c
        },
        r1a1: u288 {
            limb0: 0x80a38f46bd750e4a1272582e,
            limb1: 0x8c302700b3705e09c5704ed4,
            limb2: 0xd20e4872e7bff18
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9152fecf0f523415acc7c7be,
            limb1: 0xd9632cbfccc4ea5d7bf31177,
            limb2: 0x2d7288c5f8c83ab1
        },
        r0a1: u288 {
            limb0: 0x53144bfe4030f3f9f5efda8,
            limb1: 0xfeec394fbf392b11c66bae27,
            limb2: 0x28840813ab8a200b
        },
        r1a0: u288 {
            limb0: 0xdec3b11fbc28b305d9996ec7,
            limb1: 0x5b5f8d9d17199e149c9def6e,
            limb2: 0x10c1a149b6751bae
        },
        r1a1: u288 {
            limb0: 0x665e8eb7e7d376a2d921c889,
            limb1: 0xfdd76d06e46ee1a943b8788d,
            limb2: 0x8bb21d9960e837b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3a67c28a175200e631aa506a,
            limb1: 0x7397303a34968ff17c06e801,
            limb2: 0x1b81e0c63123688b
        },
        r0a1: u288 {
            limb0: 0x3490cfd4f076c621dac4a12c,
            limb1: 0xec183578c91b90b72e5887b7,
            limb2: 0x179fb354f608da00
        },
        r1a0: u288 {
            limb0: 0x9322bde2044dde580a78ba33,
            limb1: 0xfc74821b668d3570cad38f8b,
            limb2: 0x8cec54a291f5e57
        },
        r1a1: u288 {
            limb0: 0xc2818b6a9530ee85d4b2ae49,
            limb1: 0x8d7b651ad167f2a43d7a2d0a,
            limb2: 0x7c9ca9bab0ffc7f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3743bcbe432f1b70aa75a8b1,
            limb1: 0xa8e1db66a2a310db9fea573f,
            limb2: 0x30292be134c678f3
        },
        r0a1: u288 {
            limb0: 0x5f16697194bf3433d253b307,
            limb1: 0xe989273c4c372ee86ef54fc7,
            limb2: 0x1c874b24f6fd93d3
        },
        r1a0: u288 {
            limb0: 0xa5c105e045c1bdb67572ec62,
            limb1: 0xfa0c3057a45a52ff2f1992f2,
            limb2: 0x1374bc03cf07c5d4
        },
        r1a1: u288 {
            limb0: 0x733500646bc85510119ba7da,
            limb1: 0x7d10226fdc2371f1746dfad,
            limb2: 0x11f0a69be91108aa
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x287ce8f7167abcde1bec78bd,
            limb1: 0xae6954d8378ba87b5f5bc051,
            limb2: 0x1cd1d134954ace85
        },
        r0a1: u288 {
            limb0: 0x81299a321ef6a06de741d6f5,
            limb1: 0xcaa9d87ba64fdb4d94586d54,
            limb2: 0x13023ad966ee9fc
        },
        r1a0: u288 {
            limb0: 0xbb88386ae262c213590b321c,
            limb1: 0x29f80df8ef3e4ba42061869b,
            limb2: 0x16bc2a4665f516d6
        },
        r1a1: u288 {
            limb0: 0x6233d2cf5617f81cc22418c5,
            limb1: 0xf3f5e95b9f13083a60be2557,
            limb2: 0x18757811ef6ab83f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa576408f8300de3a7714e6ae,
            limb1: 0xe1072c9a16f202ecf37fbc34,
            limb2: 0x1b0cb1e2b5871263
        },
        r0a1: u288 {
            limb0: 0x2128e2314694b663286e231e,
            limb1: 0x54bea71957426f002508f715,
            limb2: 0x36ecc5dbe069dca
        },
        r1a0: u288 {
            limb0: 0x17c77cd88f9d5870957850ce,
            limb1: 0xb7f4ec2bc270ce30538fe9b8,
            limb2: 0x766279e588592bf
        },
        r1a1: u288 {
            limb0: 0x1b6caddf18de2f30fa650122,
            limb1: 0x40b77237a29cada253c126c6,
            limb2: 0x74ff1349b1866c8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x81ddaca846fea5680333a9d9,
            limb1: 0x1144bfa7af29bd9fe1ac2a46,
            limb2: 0x27c6623fc6948db3
        },
        r0a1: u288 {
            limb0: 0x8b144cf3adbd9fd0ab93f27d,
            limb1: 0x3314bf03c3e270c620b03fac,
            limb2: 0xd58e5b74f042a2a
        },
        r1a0: u288 {
            limb0: 0xe3f44950350e456939dc142c,
            limb1: 0x4236b56ae827e690f6ee64ad,
            limb2: 0x15d7280a1d3c768d
        },
        r1a1: u288 {
            limb0: 0x56e694f301e1983fb515c382,
            limb1: 0x184fae5aa98589004cbd24ac,
            limb2: 0x2cd1739afd4094e4
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3603266e05560becab36faef,
            limb1: 0x8c3b88c9390278873dd4b048,
            limb2: 0x24a715a5d9880f38
        },
        r0a1: u288 {
            limb0: 0xe9f595b111cfd00d1dd28891,
            limb1: 0x75c6a392ab4a627f642303e1,
            limb2: 0x17b34a30def82ab6
        },
        r1a0: u288 {
            limb0: 0xe706de8f35ac8372669fc8d3,
            limb1: 0x16cc7f4032b3f3ebcecd997d,
            limb2: 0x166eba592eb1fc78
        },
        r1a1: u288 {
            limb0: 0x7d584f102b8e64dcbbd1be9,
            limb1: 0x2ead4092f009a9c0577f7d3,
            limb2: 0x2fe2c31ee6b1d41e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72253d939632f8c28fb5763,
            limb1: 0x9b943ab13cad451aed1b08a2,
            limb2: 0xdb9b2068e450f10
        },
        r0a1: u288 {
            limb0: 0x80f025dcbce32f6449fa7719,
            limb1: 0x8a0791d4d1ed60b86e4fe813,
            limb2: 0x1b1bd5dbce0ea966
        },
        r1a0: u288 {
            limb0: 0xaa72a31de7d815ae717165d4,
            limb1: 0x501c29c7b6aebc4a1b44407f,
            limb2: 0x464aa89f8631b3a
        },
        r1a1: u288 {
            limb0: 0x6b8d137e1ea43cd4b1f616b1,
            limb1: 0xdd526a510cc84f150cc4d55a,
            limb2: 0x1da2ed980ebd3f29
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb0769326432312487e828b46,
            limb1: 0x3bd70f750df5ee3212cdfaf0,
            limb2: 0x220e456dc1f74c42
        },
        r0a1: u288 {
            limb0: 0xf9c58a57c1d90fcfa60f5f5d,
            limb1: 0x90183c0d39bf189d8351ea73,
            limb2: 0x117e7fa52013a8
        },
        r1a0: u288 {
            limb0: 0x85e6a48dd9454c45d1d7d1c0,
            limb1: 0x5300da07f54e01222c620464,
            limb2: 0x2dc746de54b9257c
        },
        r1a1: u288 {
            limb0: 0xcbb73bde0587c7fcfae582d5,
            limb1: 0x83ffea3bdea37298df413281,
            limb2: 0x102e1a673c12a62e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x813bde150426370d600ce1a9,
            limb1: 0x8aa9b3e132de96e88e1def57,
            limb2: 0x6ec718955b02577
        },
        r0a1: u288 {
            limb0: 0xce0472a50e3e0bdcdc5f50a7,
            limb1: 0xa4a212524f4aca46974121b7,
            limb2: 0xa1eacd5900d4269
        },
        r1a0: u288 {
            limb0: 0x8f230d698e1df5b74e7a57d5,
            limb1: 0xbd0bf0681d17d77f75fce474,
            limb2: 0x1e1a214a723e0829
        },
        r1a1: u288 {
            limb0: 0x65b5d7b2b281edc132d99b78,
            limb1: 0x636716a46f6a96b19c4e5f42,
            limb2: 0x2e57719df5e1f72c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x867cced8a010850958f41ff5,
            limb1: 0x6a37fdb2b8993eed18bafe8e,
            limb2: 0x21b9f782109e5a7
        },
        r0a1: u288 {
            limb0: 0x7307477d650618e66de38d0f,
            limb1: 0xacb622ce92a7e393dbe10ba1,
            limb2: 0x236e70838cee0ed5
        },
        r1a0: u288 {
            limb0: 0xb564a308aaf5dda0f4af0f0d,
            limb1: 0x55fc71e2f13d8cb12bd51e74,
            limb2: 0x294cf115a234a9e9
        },
        r1a1: u288 {
            limb0: 0xbd166057df55c135b87f35f3,
            limb1: 0xf9f29b6c50f1cce9b85ec9b,
            limb2: 0x2e8448d167f20f96
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa98eb1964870ef8981af2fcb,
            limb1: 0x66379a5c710298fdda5918e0,
            limb2: 0x267833f2ea9dcccc
        },
        r0a1: u288 {
            limb0: 0x1bae63bdc726db74b2e8e6f6,
            limb1: 0xaa28e0d60b19b281e5a570d9,
            limb2: 0x24c687c9a8ec44b1
        },
        r1a0: u288 {
            limb0: 0xf4f1e73222dbab0d2e4e9326,
            limb1: 0xbc1a89947635a932c6345d2f,
            limb2: 0x2050d99ad6799a86
        },
        r1a1: u288 {
            limb0: 0xd15ea36bff933485be1b38d8,
            limb1: 0xf0fb67937197d8219613dbae,
            limb2: 0x2a4a6b34e870a258
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdedaff3205bb953b2c390b8a,
            limb1: 0xe1a899da21c1dafb485c707e,
            limb2: 0x1ec897e7a041493e
        },
        r0a1: u288 {
            limb0: 0xf52c3c30cd4d3202b34089e0,
            limb1: 0xc652aa1ff533e1aad7532305,
            limb2: 0x2a1df766e5e3aa2e
        },
        r1a0: u288 {
            limb0: 0x7ac695d3e19d79b234daaf3d,
            limb1: 0x5ce2f92666aec92a650feee1,
            limb2: 0x21ab4fe20d978e77
        },
        r1a1: u288 {
            limb0: 0xa64a913a29a1aed4e0798664,
            limb1: 0x66bc208b511503d127ff5ede,
            limb2: 0x2389ba056de56a8d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb5b4c1a1aeaf2a7ae4d9bb47,
            limb1: 0x953b74641f8995a098223595,
            limb2: 0x2019444ab25980f5
        },
        r0a1: u288 {
            limb0: 0x9a594624bae0006d5c6ecdc0,
            limb1: 0x2f01edbb03142b4c8edfd090,
            limb2: 0x2f50b0bf270b6c30
        },
        r1a0: u288 {
            limb0: 0x6fcfed85784a51ff43ac1fa,
            limb1: 0x2e4cb55bde3e451b37a7c0,
            limb2: 0xa7c92f14897a5c0
        },
        r1a1: u288 {
            limb0: 0x7a99fc718f40e34da9b54b58,
            limb1: 0x7d06e6111978997f17f49be1,
            limb2: 0x15c48d5d51728fa7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd88b16e68600a12e6c1f6006,
            limb1: 0x333243b43d3b7ff18d0cc671,
            limb2: 0x2b84b2a9b0f03ed8
        },
        r0a1: u288 {
            limb0: 0xf3e2b57ddaac822c4da09991,
            limb1: 0xd7c894b3fe515296bb054d2f,
            limb2: 0x10a75e4c6dddb441
        },
        r1a0: u288 {
            limb0: 0x73c65fbbb06a7b21b865ac56,
            limb1: 0x21f4ecd1403bb78729c7e99b,
            limb2: 0xaf88a160a6b35d4
        },
        r1a1: u288 {
            limb0: 0xade61ce10b8492d659ff68d0,
            limb1: 0x1476e76cf3a8e0df086ad9eb,
            limb2: 0x2e28cfc65d61e946
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdf8b54b244108008e7f93350,
            limb1: 0x2ae9a68b9d6b96f392decd6b,
            limb2: 0x160b19eed152271c
        },
        r0a1: u288 {
            limb0: 0xc18a8994cfbb2e8df446e449,
            limb1: 0x408d51e7e4adedd8f4f94d06,
            limb2: 0x27661b404fe90162
        },
        r1a0: u288 {
            limb0: 0x1390b2a3b27f43f7ac73832c,
            limb1: 0x14d57301f6002fd328f2d64d,
            limb2: 0x17f3fa337367dddc
        },
        r1a1: u288 {
            limb0: 0x79cab8ff5bf2f762c5372f80,
            limb1: 0xc979d6f385fae4b5e4785acf,
            limb2: 0x60c5307a735b00f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc723fdcaa6be3d5f2cc44408,
            limb1: 0xdf28ed128fda487878f274c9,
            limb2: 0x21e4b301949d368a
        },
        r0a1: u288 {
            limb0: 0x9fd915228a73fbef25ae772d,
            limb1: 0x939120478a3a75cf4b366056,
            limb2: 0x2879d1320bd13cf0
        },
        r1a0: u288 {
            limb0: 0x61ff207c4ff49c77b7c06e06,
            limb1: 0x8d8430197c1d272ca7b75822,
            limb2: 0x12841853aa436fb8
        },
        r1a1: u288 {
            limb0: 0x81f08be345b7d64efc8e973b,
            limb1: 0xa8646d9458040e2e179ece5,
            limb2: 0x218dc4e3a63a9082
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb6bd263e7627743f211d5b1b,
            limb1: 0x6644d827fc91b5118e8707a0,
            limb2: 0x203da9462febcae1
        },
        r0a1: u288 {
            limb0: 0xbf3a2a369cbe481374ef9bad,
            limb1: 0x66f6d8fae2b14a8e0c96f280,
            limb2: 0x4f6e4255e489fc7
        },
        r1a0: u288 {
            limb0: 0xf02d0e2cd84e6cda5edee20e,
            limb1: 0x3f3b88c93d251f005dcd782,
            limb2: 0x1937f6f5203b209d
        },
        r1a1: u288 {
            limb0: 0x4115415c9bd4ff445abc9296,
            limb1: 0x1ba3843ca836df5b3868344c,
            limb2: 0xbee00ed925ac953
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x386d7b23c6dccb87637018c9,
            limb1: 0xfed2ea478e9a2210289079e2,
            limb2: 0x100aa83cb843353e
        },
        r0a1: u288 {
            limb0: 0x229c5c285f049d04c3dc5ce7,
            limb1: 0x28110670fe1d38c53ffcc6f7,
            limb2: 0x1778918279578f50
        },
        r1a0: u288 {
            limb0: 0xe9ad2c7b8a17a1f1627ff09d,
            limb1: 0xedff5563c3c3e7d2dcc402ec,
            limb2: 0xa8bd6770b6d5aa8
        },
        r1a1: u288 {
            limb0: 0x66c5c1aeed5c04470b4e8a3d,
            limb1: 0x846e73d11f2d18fe7e1e1aa2,
            limb2: 0x10a60eabe0ec3d78
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7e60e411c711bd6ac8226fb0,
            limb1: 0xd86717bee4be4bb3dfa9868b,
            limb2: 0x22cc478bbe7552b9
        },
        r0a1: u288 {
            limb0: 0xb362f251a416239fde872068,
            limb1: 0x4086c4795fe7de93252e48f5,
            limb2: 0x1d3a45e47cf5da51
        },
        r1a0: u288 {
            limb0: 0x2a8ef6e4fe006a0405578657,
            limb1: 0x8399164a5a6a17d006b20816,
            limb2: 0x590f1f0b08c9cbb
        },
        r1a1: u288 {
            limb0: 0x6e4d1dce9a77892f4d43a8e0,
            limb1: 0xce1ceb6515d6aed9554784e3,
            limb2: 0x11cfc5a96aea61ef
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x88ca191d85be1f6c205257ef,
            limb1: 0xd0cecf5c5f80926c77fd4870,
            limb2: 0x16ec42b5cae83200
        },
        r0a1: u288 {
            limb0: 0x154cba82460752b94916186d,
            limb1: 0x564f6bebac05a4f3fb1353ac,
            limb2: 0x2d47a47da836d1a7
        },
        r1a0: u288 {
            limb0: 0xb39c4d6150bd64b4674f42ba,
            limb1: 0x93c967a38fe86f0779bf4163,
            limb2: 0x1a51995a49d50f26
        },
        r1a1: u288 {
            limb0: 0xeb7bdec4b7e304bbb0450608,
            limb1: 0x11fc9a124b8c74b3d5560ea4,
            limb2: 0xbfa9bd7f55ad8ac
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb8c28270b3f47ab0e72bc7e3,
            limb1: 0x640517aa9f866ce2fc6a0797,
            limb2: 0x2839e83d748c72c2
        },
        r0a1: u288 {
            limb0: 0xfc351d817163a37ccb8c752b,
            limb1: 0x4c227db222441bcf24911555,
            limb2: 0x2d783263a21b0238
        },
        r1a0: u288 {
            limb0: 0x5aa450134de802bb41ce62b9,
            limb1: 0x29a3a5ea46b76b2f0ae35157,
            limb2: 0xba89c6119124033
        },
        r1a1: u288 {
            limb0: 0xf69cbdf26e0481213e2660b2,
            limb1: 0xb70d79b2e3d30cd2ef593521,
            limb2: 0x278ba4af687b1ec8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2fdc574c85cf0c0ce5e07a51,
            limb1: 0xd2439bf7b00bddc4cfb01b0c,
            limb2: 0x125c3bbdeb0bd2da
        },
        r0a1: u288 {
            limb0: 0x9d664714bae53cafcb5ef55d,
            limb1: 0x495c01724790853548f5e4de,
            limb2: 0x2ce5e2e263725941
        },
        r1a0: u288 {
            limb0: 0x98071eb7fe88c9124aee3774,
            limb1: 0xc3f66947a52bd2f6d520579f,
            limb2: 0x2eaf775dbd52f7d3
        },
        r1a1: u288 {
            limb0: 0x23e5594948e21db2061dca92,
            limb1: 0xd0ffa6f6c77290531c185431,
            limb2: 0x604c085de03afb1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7a54c6a4b03929ff887f292f,
            limb1: 0xca1c61852e4a2e13956f028a,
            limb2: 0x29b5bbe68d8c80f1
        },
        r0a1: u288 {
            limb0: 0xd7519003afb48bfef6183bcf,
            limb1: 0xc0920ec4ccbc719888ee5ab9,
            limb2: 0x2a6f4f54d6145dad
        },
        r1a0: u288 {
            limb0: 0x494db208697afd2f603b6a94,
            limb1: 0xab80038fad56fbecf3b84904,
            limb2: 0x4dd9228b3394754
        },
        r1a1: u288 {
            limb0: 0x69b20dee1c2f877cec776690,
            limb1: 0x981b618a079b7f15c10d158d,
            limb2: 0xc1920df2b7f7e0b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeec2912e15f6bda39d4e005e,
            limb1: 0x2b8610c44d27bdbc6ba2aac5,
            limb2: 0x78ddc4573fc1fed
        },
        r0a1: u288 {
            limb0: 0x48099a0da11ea21de015229d,
            limb1: 0x5fe937100967d5cc544f4af1,
            limb2: 0x2c9ffe6d7d7e9631
        },
        r1a0: u288 {
            limb0: 0xa70d251296ef1ae37ceb7d03,
            limb1: 0x2adadcb7d219bb1580e6e9c,
            limb2: 0x180481a57f22fd03
        },
        r1a1: u288 {
            limb0: 0xacf46db9631037dd933eb72a,
            limb1: 0x8a58491815c7656292a77d29,
            limb2: 0x261e3516c348ae12
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x930aacc6e8159ff6faffec8d,
            limb1: 0xbf0c16b9828ed4aed2813d94,
            limb2: 0x3bb54736e029678
        },
        r0a1: u288 {
            limb0: 0x6fa31e7e73f82446f44ebe5b,
            limb1: 0x7a5ce702816b0ea7db36c311,
            limb2: 0x25c9d30d5aa14a45
        },
        r1a0: u288 {
            limb0: 0x67988a0d8c2a4c313e55e0da,
            limb1: 0x1a7833d6f1d4405af80cd203,
            limb2: 0x2aa839ca8ac37622
        },
        r1a1: u288 {
            limb0: 0x3e6aad65a9a2fdc8e8086299,
            limb1: 0x5746cae5ea7b0776bff4aced,
            limb2: 0x163264f7c90c57c9
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2bfa32f0a09c3e2cfb8f6a38,
            limb1: 0x7a24df3ff3c7119a59d49318,
            limb2: 0x10e42281d64907ba
        },
        r0a1: u288 {
            limb0: 0xce42177a66cdeb4207d11e0c,
            limb1: 0x3322aa425a9ca270152372ad,
            limb2: 0x2f7fa83db407600c
        },
        r1a0: u288 {
            limb0: 0x62a8ff94fd1c7b9035af4446,
            limb1: 0x3ad500601bbb6e7ed1301377,
            limb2: 0x254d253ca06928f
        },
        r1a1: u288 {
            limb0: 0xf8f1787cd8e730c904b4386d,
            limb1: 0x7fd3744349918d62c42d24cc,
            limb2: 0x28a05e105d652eb8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ef31e059d602897fa8e80a8,
            limb1: 0x66a0710847b6609ceda5140,
            limb2: 0x228c0e568f1eb9c0
        },
        r0a1: u288 {
            limb0: 0x7b47b1b133c1297b45cdd79b,
            limb1: 0x6b4f04ed71b58dafd06b527b,
            limb2: 0x13ae6db5254df01a
        },
        r1a0: u288 {
            limb0: 0xbeca2fccf7d0754dcf23ddda,
            limb1: 0xe3d0bcd7d9496d1e5afb0a59,
            limb2: 0x305a0afb142cf442
        },
        r1a1: u288 {
            limb0: 0x2d299847431477c899560ecf,
            limb1: 0xbcd9e6c30bedee116b043d8d,
            limb2: 0x79473a2a7438353
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x11d0a57c1ae650b3b6b3a109,
            limb1: 0x922b19983b535b3c7daf01c9,
            limb2: 0x1971f4a8b85bbd92
        },
        r0a1: u288 {
            limb0: 0xcba224a8bdf81b7a0a749954,
            limb1: 0x4f5505a0feca736c4dd1d771,
            limb2: 0x2b318884d2b6530f
        },
        r1a0: u288 {
            limb0: 0x2ad921c1ef82961027ffdb24,
            limb1: 0x8153eeeb0939c221b3a3d575,
            limb2: 0xb95b6f9eefbde7
        },
        r1a1: u288 {
            limb0: 0x38e1a9d1e372dbce69cacc5b,
            limb1: 0x50188cfdb9ce0a450f37fd4e,
            limb2: 0x1a6d4bd1a2bc916f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x981532fe1156fb5d03bb9a80,
            limb1: 0xea06bfc9fa145283b8e11e6c,
            limb2: 0xaf519983c4433e0
        },
        r0a1: u288 {
            limb0: 0xcbf92554f28f79d2375ea4c2,
            limb1: 0xe6beb9ef45841f6f61f2de35,
            limb2: 0x54a8b43ddb73373
        },
        r1a0: u288 {
            limb0: 0xb45f93ac922adfbc3ec18729,
            limb1: 0xf1cdfdf7b6c42f663ba02d5c,
            limb2: 0xcad6806723a042f
        },
        r1a1: u288 {
            limb0: 0x9064de75a552dfe367f4ed14,
            limb1: 0xbfd046f4e78de3a13a4230b5,
            limb2: 0x18a7b5929b190564
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x65b71fe695e7ccd4b460dace,
            limb1: 0xa6ceba62ef334e6fe91301d5,
            limb2: 0x299f578d0f3554e6
        },
        r0a1: u288 {
            limb0: 0xaf781dd030a274e7ecf0cfa4,
            limb1: 0x2095020d373a14d7967797aa,
            limb2: 0x6a7f9df6f185bf8
        },
        r1a0: u288 {
            limb0: 0x8e91e2dba67d130a0b274df3,
            limb1: 0xe192a19fce285c12c6770089,
            limb2: 0x6e9acf4205c2e22
        },
        r1a1: u288 {
            limb0: 0xbcd5c206b5f9c77d667189bf,
            limb1: 0x656a7e2ebc78255d5242ca9,
            limb2: 0x25f43fec41d2b245
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x488e41fd870df0fb1f66322,
            limb1: 0xe06ee76a088ba518966d268f,
            limb2: 0x23d7f9224627282a
        },
        r0a1: u288 {
            limb0: 0xb1dd1beea94bc1ccf285ff22,
            limb1: 0x6b42e56cff6410d862394747,
            limb2: 0x2e774aaedcbd1cd7
        },
        r1a0: u288 {
            limb0: 0x1acc0b87a9170faaeb9b7f7b,
            limb1: 0x10ccfedd8cb5e462425181ec,
            limb2: 0x304255ea0ee67df7
        },
        r1a1: u288 {
            limb0: 0x7ac4ff9a9ae094c1b4c4f190,
            limb1: 0x2c52d7eda95126a607d5e962,
            limb2: 0x17a8d62d1e0c6bbf
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4e56e6733cce20d9c5b16d96,
            limb1: 0xc7ef260535fb75b9d3e089f,
            limb2: 0x292dd4aa636e7729
        },
        r0a1: u288 {
            limb0: 0x6e7e1038b336f36519c9faaf,
            limb1: 0x3c66bd609510309485e225c7,
            limb2: 0x10cacac137411eb
        },
        r1a0: u288 {
            limb0: 0x4a3e8b96278ac092fe4f3b15,
            limb1: 0xba47e583e2750b42f93c9631,
            limb2: 0x125da6bd69495bb9
        },
        r1a1: u288 {
            limb0: 0xae7a56ab4b959a5f6060d529,
            limb1: 0xc3c263bfd58c0030c063a48e,
            limb2: 0x2f4d15f13fae788c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x301e0885c84d273b6d323124,
            limb1: 0x11fd5c75e269f7a30fa4154f,
            limb2: 0x19afdcfdcce2fc0d
        },
        r0a1: u288 {
            limb0: 0x3d13519f934526be815c38b0,
            limb1: 0xd43735909547da73838874fc,
            limb2: 0x255d8aca30f4e0f6
        },
        r1a0: u288 {
            limb0: 0x90a505b76f25a3396e2cea79,
            limb1: 0x3957a2d0848c54b9079fc114,
            limb2: 0x1ba0cd3a9fe6d4bb
        },
        r1a1: u288 {
            limb0: 0xc47930fba77a46ebb1db30a9,
            limb1: 0x993a1cb166e9d40bebab02b2,
            limb2: 0x1deb16166d48118b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd07133619207db73936a5c55,
            limb1: 0xe2e7e2b3df11607fefe89418,
            limb2: 0x17b3952591c3a418
        },
        r0a1: u288 {
            limb0: 0x66bd34b97dc810b3dceffe41,
            limb1: 0xa674029e6343ec27eeb3e2ab,
            limb2: 0xae8fe74b737ce5e
        },
        r1a0: u288 {
            limb0: 0xd7fd5a06933074a8b23d0cb9,
            limb1: 0x2b157089f1a6606ebd62180f,
            limb2: 0x353f8caa16417c6
        },
        r1a1: u288 {
            limb0: 0x30c289a45f8f558237a4b529,
            limb1: 0x4208f96ac8a1badf2e62b072,
            limb2: 0x297978403509137a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7fb0d2cd8284a5cd302d46d3,
            limb1: 0x1b8e88bf98e3fc1fff424284,
            limb2: 0x2bd7d83afd89c209
        },
        r0a1: u288 {
            limb0: 0xf0f8b170af0195d6c4c0589c,
            limb1: 0x81ed2b05a971aa799d376806,
            limb2: 0x28129c106dfdae89
        },
        r1a0: u288 {
            limb0: 0x6cfde9c5d851bae71ebb000e,
            limb1: 0xa172e35c1329ed3a769c7a08,
            limb2: 0x73fd827fe0e6abf
        },
        r1a1: u288 {
            limb0: 0x78ac8f8c5e081111f55eeb0e,
            limb1: 0x17da98ed2205c59b0379d32c,
            limb2: 0x16ac1ae63146a2f7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb15bbaec50ff49d30e49f74a,
            limb1: 0xc90a8c79fb045c5468f14151,
            limb2: 0x25e47927e92df0e3
        },
        r0a1: u288 {
            limb0: 0x57f66909d5d40dfb8c7b4d5c,
            limb1: 0xea5265282e2139c48c1953f2,
            limb2: 0x2d7f5e6aff2381f6
        },
        r1a0: u288 {
            limb0: 0x2a2f573b189a3c8832231394,
            limb1: 0x738abc15844895ffd4733587,
            limb2: 0x20aa11739c4b9bb4
        },
        r1a1: u288 {
            limb0: 0x51695ec614f1ff4cce2f65d1,
            limb1: 0x6765aae6cb895a2406a6dd7e,
            limb2: 0x1126ee431c522da0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6bc3c682c568f83a23e217,
            limb1: 0xfe1bf1eb5a04ef9a5489e518,
            limb2: 0x171250d30569e840
        },
        r0a1: u288 {
            limb0: 0x51209e29bee99a37a2787c34,
            limb1: 0xf735ef430ebc798ff508fce9,
            limb2: 0x2e615c28da46986
        },
        r1a0: u288 {
            limb0: 0xc0ae17ddd2e10733c6620b30,
            limb1: 0xd3cf2d26740be9493f3e28c4,
            limb2: 0x2a64e7e10b2a2404
        },
        r1a1: u288 {
            limb0: 0x63267b2736503f40ce54d84b,
            limb1: 0x198858bd44650dd077d33df2,
            limb2: 0x286d569815339c0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9214fc3209f1518b05fd21c6,
            limb1: 0x9bc8ce4f56423009710770e8,
            limb2: 0x32445cc6972799c
        },
        r0a1: u288 {
            limb0: 0x93ef401ecd9cfae3644d22e6,
            limb1: 0xce5a741a9847a144cfaf8c96,
            limb2: 0xf7a814d5726da4a
        },
        r1a0: u288 {
            limb0: 0xd19264d986f163b133a91c0c,
            limb1: 0x529dc5ce4b193c0f672c6a32,
            limb2: 0x2e9a118959353374
        },
        r1a1: u288 {
            limb0: 0x3d97d6e8f45072cc9e85e412,
            limb1: 0x4dafecb04c3bb23c374f0486,
            limb2: 0xa174dd4ac8ee628
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x40c6ae3a7f0340fbe08a2929,
            limb1: 0xaac31d874ed0c4d4f1698657,
            limb2: 0x52d9ea88b8e8036
        },
        r0a1: u288 {
            limb0: 0x51eb673b2dbeb8c0b3f7e965,
            limb1: 0x9b58da9e4fc0314c4bca4bc5,
            limb2: 0x4053a2882e88fc3
        },
        r1a0: u288 {
            limb0: 0x31f574ad18c883dd07d3e2c5,
            limb1: 0xe92b6da8e2cb8f1aecf27788,
            limb2: 0x1043f2d845bc5e87
        },
        r1a1: u288 {
            limb0: 0x7344546c40112eddf27690e3,
            limb1: 0x53cf441effb01ee1c63f9f0d,
            limb2: 0xe1b187313cc0083
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x98d8b0c4adcf27bceb305c2c,
            limb1: 0x859afa9c7668ed6152d8cba3,
            limb2: 0x29e7694f46e3a272
        },
        r0a1: u288 {
            limb0: 0x1d970845365594307ba97556,
            limb1: 0xd002d93ad793e154afe5b49b,
            limb2: 0x12ca77d3fb8eee63
        },
        r1a0: u288 {
            limb0: 0x9f2934faefb8268e20d0e337,
            limb1: 0xbc4b5e1ec056881319f08766,
            limb2: 0x2e103461759a9ee4
        },
        r1a1: u288 {
            limb0: 0x7adc6cb87d6b43000e2466b6,
            limb1: 0x65e5cefa42b25a7ee8925fa6,
            limb2: 0x2560115898d7362a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa85c9df0bd8cd7cb4a9a7f0f,
            limb1: 0x9be7a0a243182692951a8af5,
            limb2: 0x2cb239ac02ee304d
        },
        r0a1: u288 {
            limb0: 0x43f1dd02c69e5b7930858706,
            limb1: 0x8623d11150e25f58faeeb918,
            limb2: 0x20570302e163049
        },
        r1a0: u288 {
            limb0: 0xad68d6b4154f6bd2cbcfeb1e,
            limb1: 0x99610b57dfab2a4a52def63f,
            limb2: 0xce49f0d5399f40f
        },
        r1a1: u288 {
            limb0: 0xf67ed0f5e354f6c5013e6038,
            limb1: 0x8e35b760f2997003234584b5,
            limb2: 0x172331dc53767c6b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x64d864643668392c0e357cc4,
            limb1: 0x4c9bf66853f1b287015ab84c,
            limb2: 0x2f5f1b92ad7ee4d4
        },
        r0a1: u288 {
            limb0: 0xdc33c8da5c575eef6987a0e1,
            limb1: 0x51cc07c7ef28e1b8d934bc32,
            limb2: 0x2358d94a17ec2a44
        },
        r1a0: u288 {
            limb0: 0xf659845b829bbba363a2497b,
            limb1: 0x440f348e4e7bed1fb1eb47b2,
            limb2: 0x1ad0eaab0fb0bdab
        },
        r1a1: u288 {
            limb0: 0x1944bb6901a1af6ea9afa6fc,
            limb1: 0x132319df135dedddf5baae67,
            limb2: 0x52598294643a4aa
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x76fd94c5e6f17fa6741bd7de,
            limb1: 0xc2e0831024f67d21013e0bdd,
            limb2: 0x21e2af6a43119665
        },
        r0a1: u288 {
            limb0: 0xad290eab38c64c0d8b13879b,
            limb1: 0xdd67f881be32b09d9a6c76a0,
            limb2: 0x8000712ce0392f2
        },
        r1a0: u288 {
            limb0: 0xd30a46f4ba2dee3c7ace0a37,
            limb1: 0x3914314f4ec56ff61e2c29e,
            limb2: 0x22ae1ba6cd84d822
        },
        r1a1: u288 {
            limb0: 0x5d888a78f6dfce9e7544f142,
            limb1: 0x9439156de974d3fb6d6bda6e,
            limb2: 0x106c8f9a27d41a4f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x96b117e7fc62f929ed703f0e,
            limb1: 0x83e3fe8da2d5bf1ca2e258e1,
            limb2: 0xe9f29c61ab589d7
        },
        r0a1: u288 {
            limb0: 0x737ac3e007f8c7712fdbac0b,
            limb1: 0x3e8085d1d95dccc87422c789,
            limb2: 0xfbf17831f0d15f3
        },
        r1a0: u288 {
            limb0: 0x693eb4bacb107730b8378294,
            limb1: 0x4c49ac4e056d9021fb695566,
            limb2: 0x22ad8df6c5bc2027
        },
        r1a1: u288 {
            limb0: 0x467bc719c791b4e050adbaee,
            limb1: 0x239e60d52cd4af5bc2b81aab,
            limb2: 0x14c22995e2e62c8d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7c64186bfa63f1ae678d7c06,
            limb1: 0x3b67a9d32c98e7a7950b8062,
            limb2: 0x37972865398dbc3
        },
        r0a1: u288 {
            limb0: 0xfb332d359b016c80368455f5,
            limb1: 0xd1d0aa44357f4870e6d545c,
            limb2: 0xb6c3563b7d03b70
        },
        r1a0: u288 {
            limb0: 0x6ce986c12bebf01cad267db3,
            limb1: 0xd89737c38a1028606ddfb33e,
            limb2: 0xf18c9fa5f57116e
        },
        r1a1: u288 {
            limb0: 0x8e783710a2ef69953ff61180,
            limb1: 0x8ee3fb012d5bb1d7df1b9597,
            limb2: 0x288563c748de7563
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x92c09e4796207b802168341b,
            limb1: 0xd2d9d6acffd7829066cc49ce,
            limb2: 0xc89c2d0a7b2c81e
        },
        r0a1: u288 {
            limb0: 0x47e3c1cf6cdb6f3efe778c7f,
            limb1: 0x66b347099b6436794cf062eb,
            limb2: 0x18b4ccc64ae0a857
        },
        r1a0: u288 {
            limb0: 0x7d5793606a73b2740c71484a,
            limb1: 0xa0070135ca2dc571b28e3c9c,
            limb2: 0x1bc03576e04b94cf
        },
        r1a1: u288 {
            limb0: 0x1ba85b29875e638c10f16c99,
            limb1: 0x158f2f2acc3c2300bb9f9225,
            limb2: 0x42d8a8c36ea97c6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xff2552e72312d4dd71b3dd16,
            limb1: 0xa53fa529275120b0d29868ec,
            limb2: 0x1df4ff7780862f33
        },
        r0a1: u288 {
            limb0: 0xdf4c92415b58a805566bedae,
            limb1: 0x54905a740f8d5d280b40df5e,
            limb2: 0x1993967e56b631ba
        },
        r1a0: u288 {
            limb0: 0x63e4da263eca3305f3d03137,
            limb1: 0xb2e9e8c5e8b707b79c69e088,
            limb2: 0xf88c19174ccf8f8
        },
        r1a1: u288 {
            limb0: 0x3040a7e843cc0bf47ad4f455,
            limb1: 0x2d6debc0bb07b90a0959cf5b,
            limb2: 0x2e45980b47bd6259
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9440ad13408319cecb07087b,
            limb1: 0x537afc0c0cfe8ff761c24e08,
            limb2: 0x48e4ac10081048d
        },
        r0a1: u288 {
            limb0: 0xa37fb82b03a2c0bb2aa50c4f,
            limb1: 0xd3797f05c8fb84f6b630dfb,
            limb2: 0x2dffde2d6c7e43ff
        },
        r1a0: u288 {
            limb0: 0xc55d2eb1ea953275e780e65b,
            limb1: 0xe141cf680cab57483c02e4c7,
            limb2: 0x1b71395ce5ce20ae
        },
        r1a1: u288 {
            limb0: 0xe4fab521f1212a1d301065de,
            limb1: 0x4f8d31c78df3dbe4ab721ef2,
            limb2: 0x2828f21554706a0e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8cefc2f2af2a3082b790784e,
            limb1: 0x97ac13b37c6fbfc736a3d456,
            limb2: 0x683b1cdffd60acd
        },
        r0a1: u288 {
            limb0: 0xa266a8188a8c933dcffe2d02,
            limb1: 0x18d3934c1838d7bce81b2eeb,
            limb2: 0x206ac5cdda42377
        },
        r1a0: u288 {
            limb0: 0x90332652437f6e177dc3b28c,
            limb1: 0x75bd8199433d607735414ee8,
            limb2: 0x29d6842d8298cf7e
        },
        r1a1: u288 {
            limb0: 0xadedf46d8ea11932db0018e1,
            limb1: 0xbc7239ae9d1453258037befb,
            limb2: 0x22e7ebdd72c6f7a1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xda55b9dc9004d5260880e062,
            limb1: 0x3a8beeb1df555512959cd8f7,
            limb2: 0x5ac2278c0d18a9e
        },
        r0a1: u288 {
            limb0: 0x20092ddd3eff4cfe8601d83f,
            limb1: 0x20d1471995d6a846a9a20d3,
            limb2: 0xb98c82f619838eb
        },
        r1a0: u288 {
            limb0: 0x2a6c1ee6cab983ce44424908,
            limb1: 0x7757c28d8b387cac04cb734b,
            limb2: 0x222b7e1ffee4df1a
        },
        r1a1: u288 {
            limb0: 0xbc8a4a671171f43999e57b32,
            limb1: 0xdd66cc998027800512114c5c,
            limb2: 0x935b887ddb3f327
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdd3954f41e4b9d6ead54d92a,
            limb1: 0x58af043c8c9dd48c4f15a3d8,
            limb2: 0x220a16b7669f8515
        },
        r0a1: u288 {
            limb0: 0xd47d49dca32124fc9027f83d,
            limb1: 0xc151df3e3418497d7890e561,
            limb2: 0x8cd61b9fe2ce006
        },
        r1a0: u288 {
            limb0: 0xc88a10ea50115b40989b12bd,
            limb1: 0x10dbd39498807ae658f3364a,
            limb2: 0x13b3f51521d7d4b9
        },
        r1a1: u288 {
            limb0: 0x8dc2b6d3490bd090b2f63eef,
            limb1: 0x701eb176e03b68d6055a3b4f,
            limb2: 0x2fa3ba0e63b8d1a9
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x348e15357d9299e582033136,
            limb1: 0x53578c46b15abb39da35a56e,
            limb2: 0x1043b711f86bb33f
        },
        r0a1: u288 {
            limb0: 0x9fa230a629b75217f0518e7c,
            limb1: 0x77012a4bb8751322a406024d,
            limb2: 0x121e2d845d972695
        },
        r1a0: u288 {
            limb0: 0x5600f2d51f21d9dfac35eb10,
            limb1: 0x6fde61f876fb76611fb86c1a,
            limb2: 0x2bf4fbaf5bd0d0df
        },
        r1a1: u288 {
            limb0: 0xd732aa0b6161aaffdae95324,
            limb1: 0xb3c4f8c3770402d245692464,
            limb2: 0x2a0f1740a293e6f0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x94ba5235043f498be095de82,
            limb1: 0xb1342fb73e87b93150694c5b,
            limb2: 0x240e8ca2a5422e9f
        },
        r0a1: u288 {
            limb0: 0x901ff1cdeceed968779ae240,
            limb1: 0x3ed254f5ac8ec10e00271e05,
            limb2: 0x206f943462d1c167
        },
        r1a0: u288 {
            limb0: 0xf8954f12f924a971811614c0,
            limb1: 0x4d293f8b5eaabe0c9b344261,
            limb2: 0x4b12b635355c0b3
        },
        r1a1: u288 {
            limb0: 0x681ba2c97d6b1e3887d57cf1,
            limb1: 0xe6b3fa986adcea63c92d1d53,
            limb2: 0x267ae2b4ece2c533
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa9e2efa41aaa98ab59728940,
            limb1: 0x163c0425f66ce72daef2f53e,
            limb2: 0x2feaf1b1770aa7d8
        },
        r0a1: u288 {
            limb0: 0x3bb7afd3c0a79b6ac2c4c063,
            limb1: 0xee5cb42e8b2bc999e312e032,
            limb2: 0x1af2071ae77151c3
        },
        r1a0: u288 {
            limb0: 0x1cef1c0d8956d7ceb2b162e7,
            limb1: 0x202b4af9e51edfc81a943ded,
            limb2: 0xc9e943ffbdcfdcb
        },
        r1a1: u288 {
            limb0: 0xe18b1b34798b0a18d5ad43dd,
            limb1: 0x55e8237731941007099af6b8,
            limb2: 0x1472c0290db54042
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x636d9e927a35164b8066731c,
            limb1: 0x6f35f82d3100546ff7ebe0cb,
            limb2: 0x101d50611f32977f
        },
        r0a1: u288 {
            limb0: 0xcd4686871139efe738c81071,
            limb1: 0x993dc159639819a332a44990,
            limb2: 0x2bd1289675085aec
        },
        r1a0: u288 {
            limb0: 0x4c0c1045656e455761bc66db,
            limb1: 0x294c1bbe1565cd87e5d689d5,
            limb2: 0x1ba325c0da5c200e
        },
        r1a1: u288 {
            limb0: 0xcba0a397b2638678622b5f47,
            limb1: 0xc8716910cf7ab1d789e9d29b,
            limb2: 0x26e69db4800640d6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb4c7963e0d1dc082de0725e,
            limb1: 0x375a7a3d765918de24804223,
            limb2: 0xf177b77b031596d
        },
        r0a1: u288 {
            limb0: 0x87a7b9c5f10500b0b40d7a1e,
            limb1: 0x6f234d1dc7f1394b55858810,
            limb2: 0x26288146660a3914
        },
        r1a0: u288 {
            limb0: 0xa6308c89cebe40447abf4a9a,
            limb1: 0x657f0fdda13b1f8ee314c22,
            limb2: 0x1701aabc250a9cc7
        },
        r1a1: u288 {
            limb0: 0x9db9bf660dc77cbe2788a755,
            limb1: 0xbdf9c1c15a4bd502a119fb98,
            limb2: 0x14b4de3d26bd66e1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x53c49c62ca96007e14435295,
            limb1: 0x85aeb885e4123ca8d3232fdf,
            limb2: 0x750017ce108abf3
        },
        r0a1: u288 {
            limb0: 0xba6bf3e25d370182e4821239,
            limb1: 0x39de83bf370bd2ba116e8405,
            limb2: 0x2b8417a72ba6d940
        },
        r1a0: u288 {
            limb0: 0xa922f50550d349849b14307b,
            limb1: 0x569766b6feca6143a5ddde9d,
            limb2: 0x2c3c6765b25a01d
        },
        r1a1: u288 {
            limb0: 0x6016011bdc3b506563b0f117,
            limb1: 0xbab4932beab93dde9b5b8a5c,
            limb2: 0x1bf3f698de0ace60
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe4834e4095fa17d47305b633,
            limb1: 0x781edf3c5eab59a0a26b84da,
            limb2: 0x16c51629c3f12eaa
        },
        r0a1: u288 {
            limb0: 0xde8ee0cedca6dec2fb7b2a54,
            limb1: 0xe45d84a7cae9a76575bdfdb3,
            limb2: 0x2d64d3e3db5944fd
        },
        r1a0: u288 {
            limb0: 0x7ad28e74f3c233ba8a6bf1c2,
            limb1: 0x8a293bfef4421aad1c172564,
            limb2: 0x9a322a0ed2cccc7
        },
        r1a1: u288 {
            limb0: 0xd276b67fa1c00b4fbf20b964,
            limb1: 0x8f1fcea2aefab7b0ed4df433,
            limb2: 0x26b63a62060df79c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa686b151db44ed057c58fb88,
            limb1: 0x7370fb37c81d292144516192,
            limb2: 0x285b458cc214edbb
        },
        r0a1: u288 {
            limb0: 0xf6826913f9cfae5354599762,
            limb1: 0xa76b5da74275e6a0f3b9fbb2,
            limb2: 0x98d37a7d7f3acd5
        },
        r1a0: u288 {
            limb0: 0xda437be976e7a3f865878ea,
            limb1: 0x80ceabbd6770e195607f538d,
            limb2: 0x1873acf048aa7456
        },
        r1a1: u288 {
            limb0: 0x5e48e96a90c8aa9c6984721b,
            limb1: 0xf2f5b567363277c406bf2acd,
            limb2: 0x2900f2cfdff237ef
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb9f05ffda3ee208f990ff3a8,
            limb1: 0x6201d08440b28ea672b9ea93,
            limb2: 0x1ed60e5a5e778b42
        },
        r0a1: u288 {
            limb0: 0x8e8468b937854c9c00582d36,
            limb1: 0x7888fa8b2850a0c555adb743,
            limb2: 0xd1342bd01402f29
        },
        r1a0: u288 {
            limb0: 0xf5c4c66a974d45ec754b3873,
            limb1: 0x34322544ed59f01c835dd28b,
            limb2: 0x10fe4487a871a419
        },
        r1a1: u288 {
            limb0: 0xedf4af2df7c13d6340069716,
            limb1: 0x8592eea593ece446e8b2c83b,
            limb2: 0x12f9280ce8248724
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7e501b2c793ed0d11e608204,
            limb1: 0x2422dfabf9eaebcabe89d9b8,
            limb2: 0x192675cea85ed2ca
        },
        r0a1: u288 {
            limb0: 0x21cccf1c3c3b36206328ff1f,
            limb1: 0x650a8f0b6b9eed71d14e65c8,
            limb2: 0x71d394cd6771576
        },
        r1a0: u288 {
            limb0: 0x1e328d0bef5758213df43624,
            limb1: 0x3eeab09ef85d7eb81a27c0e4,
            limb2: 0xdb09119f0912ad0
        },
        r1a1: u288 {
            limb0: 0xc68308c40af9eefc57f5c710,
            limb1: 0x6d59c83d9e5b7eeb3b604d40,
            limb2: 0x112b8369dc8d459d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe67f72c6d45f1bb04403139f,
            limb1: 0x9233e2a95d3f3c3ff2f7e5b8,
            limb2: 0x1f931e8e4343b028
        },
        r0a1: u288 {
            limb0: 0x20ef53907af71803ce3ca5ca,
            limb1: 0xd99b6637ee9c73150b503ea4,
            limb2: 0x1c9759def8a98ea8
        },
        r1a0: u288 {
            limb0: 0xa0a3b24c9089d224822fad53,
            limb1: 0xdfa2081342a7a895062f3e50,
            limb2: 0x185e8cf6b3e494e6
        },
        r1a1: u288 {
            limb0: 0x8752a12394b29d0ba799e476,
            limb1: 0x1493421da067a42e7f3d0f8f,
            limb2: 0x67e7fa3e3035edf
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc4f12534c16a36e9309ee4a8,
            limb1: 0xaf6fa71a1e0fa061a15a0d5e,
            limb2: 0x26d0339b267a9edc
        },
        r0a1: u288 {
            limb0: 0x8260d0350bd663d30fd8e0d1,
            limb1: 0xd651736e74f4fd259d6d8385,
            limb2: 0x1a29d02ae7c4015a
        },
        r1a0: u288 {
            limb0: 0xfe3853858c334df2c59bae4f,
            limb1: 0x1f4f740f45e5d3ce89252c7,
            limb2: 0x19c0044510bc5805
        },
        r1a1: u288 {
            limb0: 0xaa52471eac80a89b42da9c86,
            limb1: 0x7adc15a71ab55aaa0238c70a,
            limb2: 0x1120d4ecb12f7f12
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6d6138c95464e5e774ae7ba0,
            limb1: 0xe6ca73a5498e4ccd4bb68fc7,
            limb2: 0x15bf8aa8ed1beff6
        },
        r0a1: u288 {
            limb0: 0xabd7c55a134ed405b4966d3c,
            limb1: 0xe69dd725ccc4f9dd537fe558,
            limb2: 0x2df4a03e2588a8f1
        },
        r1a0: u288 {
            limb0: 0x7cf42890de0355ffc2480d46,
            limb1: 0xe33c2ad9627bcb4b028c2358,
            limb2: 0x2a18767b40de20bd
        },
        r1a1: u288 {
            limb0: 0x79737d4a87fab560f3d811c6,
            limb1: 0xa88fee5629b91721f2ccdcf7,
            limb2: 0x2b51c831d3404d5e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5b4ffb7f9bf6c819a955af93,
            limb1: 0xab72fcc27debebdd2b5eaa0f,
            limb2: 0x11199f5402876b74
        },
        r0a1: u288 {
            limb0: 0xefa119c1dc46ef1090dfc2a3,
            limb1: 0xa6e5e55df38b71199f5c109b,
            limb2: 0x89f23e25e8cfb25
        },
        r1a0: u288 {
            limb0: 0xd8c5d3d5471411d82b5e3f01,
            limb1: 0xf37323d2fabbc62b56e9421f,
            limb2: 0x12cd600aaf99c4bc
        },
        r1a1: u288 {
            limb0: 0x6aaf90ca3709220632611fd3,
            limb1: 0x276434fff3f187278a9b1606,
            limb2: 0x22b5c38ce4b88e5b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9812f6145cf7e949fa207f20,
            limb1: 0x4061c36b08d5bcd408b14f19,
            limb2: 0x8332e08b2eb51ed
        },
        r0a1: u288 {
            limb0: 0xa4a7ae8f65ba180c523cb33,
            limb1: 0xb71fabbdc78b1128712d32a5,
            limb2: 0x2acd1052fd0fefa7
        },
        r1a0: u288 {
            limb0: 0x6ea5598e221f25bf27efc618,
            limb1: 0xa2c2521a6dd8f306f86d6db7,
            limb2: 0x13af144288655944
        },
        r1a1: u288 {
            limb0: 0xea469c4b390716a6810fff5d,
            limb1: 0xf8052694d0fdd3f40b596c20,
            limb2: 0x24d0ea6c86e48c5c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e39be614d904bafea58a8cd,
            limb1: 0xf53f0a6a20a1f1783b0ea2d0,
            limb2: 0x99c451b7bb726d7
        },
        r0a1: u288 {
            limb0: 0x28ec54a4ca8da838800c573d,
            limb1: 0xb78365fa47b5e192307b7b87,
            limb2: 0x2df87aa88e012fec
        },
        r1a0: u288 {
            limb0: 0xfb7022881c6a6fdfb18de4aa,
            limb1: 0xb9bd30f0e93c5b93ad333bab,
            limb2: 0x1dd20cbccdeb9924
        },
        r1a1: u288 {
            limb0: 0x16d8dfdf790a6be16a0e55ba,
            limb1: 0x90ab884395509b9a264472d4,
            limb2: 0xeaec571657b6e9d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9a997c2d22c1510662def846,
            limb1: 0x9ca6584df2be10dcf97ebea7,
            limb2: 0x2b08f043455295c5
        },
        r0a1: u288 {
            limb0: 0x5fa462d240d151183649b036,
            limb1: 0xd860885d0db3866fc7d8dc91,
            limb2: 0x2962e610b926b887
        },
        r1a0: u288 {
            limb0: 0x3842bac0d18691d03adb713c,
            limb1: 0xda670ae2154aa77fb5492b7a,
            limb2: 0x1a58a2c988104c18
        },
        r1a1: u288 {
            limb0: 0xfa02343c3be6df3086decc28,
            limb1: 0x810eccabc55d28e4518d1f51,
            limb2: 0x2372981ac8c5108d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3dc4404842e448769941b0a1,
            limb1: 0x8d369b7feb7630098c97833f,
            limb2: 0x1868655dcf54533c
        },
        r0a1: u288 {
            limb0: 0x73750974d93d36be78452bc3,
            limb1: 0x1c2d1ee8a53f4da187a7ffe3,
            limb2: 0x226f15f4309d873e
        },
        r1a0: u288 {
            limb0: 0x1276de35372632d19da85e2f,
            limb1: 0x18c683b3bc166ad4ab264a61,
            limb2: 0x2277499803a776d8
        },
        r1a1: u288 {
            limb0: 0xbe917dcc38a6607fcf8056fb,
            limb1: 0x94ff8e4b4753df55f078ba8f,
            limb2: 0xc51d124577e9ef2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xce78fc6505db036c10fac771,
            limb1: 0x61f8c0bc7f60ad6415d5e419,
            limb2: 0x59009c5cf9ea663
        },
        r0a1: u288 {
            limb0: 0xb3b3f697fc34d64ba053b914,
            limb1: 0x317af5815ce5bfffc5a6bc97,
            limb2: 0x23f97fee4deda847
        },
        r1a0: u288 {
            limb0: 0xf559e09cf7a02674ac2fa642,
            limb1: 0x4fa7548b79cdd054e203689c,
            limb2: 0x2173b379d546fb47
        },
        r1a1: u288 {
            limb0: 0x758feb5b51caccff9da0f78f,
            limb1: 0xd7f37a1008233b74c4894f55,
            limb2: 0x917c640b4b9627e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x76c9506930733388646151ea,
            limb1: 0xf0a3c7c23f64d231ad2bde6a,
            limb2: 0x2c19f96bdd300b03
        },
        r0a1: u288 {
            limb0: 0x47109da1606349b8dbc096a1,
            limb1: 0xe874331708151ac2e5de963d,
            limb2: 0x165fd3d644a8f8f3
        },
        r1a0: u288 {
            limb0: 0xd81978f1a3838ca09b3cae4d,
            limb1: 0x87a72c257992ec16769d2214,
            limb2: 0x1b5066bc400b1ea0
        },
        r1a1: u288 {
            limb0: 0x2b248b278e9bd74b9c89eaab,
            limb1: 0xf4bb095b5e77aa3f18246b5e,
            limb2: 0x1c84edbc89fed7d6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72548e0d946b796842cfecd8,
            limb1: 0x78b54b355e3c26476b0fab82,
            limb2: 0x2dc9f32c90b6ba31
        },
        r0a1: u288 {
            limb0: 0xa943be83a6fc90414320753b,
            limb1: 0xd708fde97241095833ce5a08,
            limb2: 0x142111e6a73d2e82
        },
        r1a0: u288 {
            limb0: 0xc79e8d5465ec5f28781e30a2,
            limb1: 0x697fb9430b9ad050ced6cce,
            limb2: 0x1a9d647149842c53
        },
        r1a1: u288 {
            limb0: 0x9bab496952559362586725cd,
            limb1: 0xbe78e5a416d9665be64806de,
            limb2: 0x147b550afb4b8b84
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xed512dcd508dd2cf441de924,
            limb1: 0xc20d8c74a811886477db1e5b,
            limb2: 0x2a4b8919e44ee35e
        },
        r0a1: u288 {
            limb0: 0x599ad1389576bf5d89ed2759,
            limb1: 0x45cbd5bd5d6696e2caca930,
            limb2: 0x1fd2d914d04fdb13
        },
        r1a0: u288 {
            limb0: 0x148e9737afa2b043833460e8,
            limb1: 0xf2bf501a035fd30c1c3aa98d,
            limb2: 0x2fcb3045d4773e85
        },
        r1a1: u288 {
            limb0: 0x2292e8f708a08d826e615c7f,
            limb1: 0x4fdd83ef4a7c27022f60ebb6,
            limb2: 0xa1f42a69ece1ad0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1422e11013fe6cdd7f843391,
            limb1: 0xfb96092ab69fc530e27d8d8e,
            limb2: 0xe39e04564fedd0
        },
        r0a1: u288 {
            limb0: 0xbd4e81e3b4db192e11192788,
            limb1: 0x805257d3c2bdbc344a15ce0d,
            limb2: 0x10ddd4f47445106b
        },
        r1a0: u288 {
            limb0: 0x87ab7f750b693ec75bce04e1,
            limb1: 0x128ba38ebed26d74d26e4d69,
            limb2: 0x2f1d22a64c983ab8
        },
        r1a1: u288 {
            limb0: 0x74207c17f5c8335183649f77,
            limb1: 0x7144cd3520ac2e1be3204133,
            limb2: 0xb38d0645ab3499d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4ef6db1d4615f1736c4d23ec,
            limb1: 0xbb0f00c9e7aaf37a9240b191,
            limb2: 0xf3fb0ab9a90a04f
        },
        r0a1: u288 {
            limb0: 0x15724a31123db8abf85680a1,
            limb1: 0xab47ad1f007ee3e60d4ca5c9,
            limb2: 0x11bf3e07c68fc601
        },
        r1a0: u288 {
            limb0: 0xcec9ebfeb3912314ccd9ae6d,
            limb1: 0x101630aa0f04af5df45b2c21,
            limb2: 0x19e0f2d6fb457492
        },
        r1a1: u288 {
            limb0: 0x65c9762510dd36b9d3e5fc1a,
            limb1: 0xb5a32a07002b8ac9d672ea1d,
            limb2: 0xd609bfe97d005d1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49173a889c697b0ab07f35bc,
            limb1: 0xdcffb65f4b4c21ced6b623af,
            limb2: 0x1366d12ee6022f7b
        },
        r0a1: u288 {
            limb0: 0x285fdce362f7a79b89c49b5c,
            limb1: 0xae9358c8eaf26e2fed7353f5,
            limb2: 0x21c91fefaf522b5f
        },
        r1a0: u288 {
            limb0: 0x748798f96436e3b18c64964a,
            limb1: 0xfc3bb221103d3966d0510599,
            limb2: 0x167859ae2ebc5e27
        },
        r1a1: u288 {
            limb0: 0xe3b55b05bb30e23fa7eba05b,
            limb1: 0xa5fc8b7f7bc6abe91c90ddd5,
            limb2: 0xe0da83c6cdebb5a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x30a4abff5957209783681bfb,
            limb1: 0x82d868d5ca421e4f1a0daf79,
            limb2: 0x1ba96ef98093d510
        },
        r0a1: u288 {
            limb0: 0xd9132c7f206a6c036a39e432,
            limb1: 0x8a2dfb94aba29a87046110b8,
            limb2: 0x1fad2fd5e5e37395
        },
        r1a0: u288 {
            limb0: 0x76b136dc82b82e411b2c44f6,
            limb1: 0xe405f12052823a54abb9ea95,
            limb2: 0xf125ba508c26ddc
        },
        r1a1: u288 {
            limb0: 0x1bae07f5f0cc48e5f7aac169,
            limb1: 0x47d1288d741496a960e1a979,
            limb2: 0xa0911f6cc5eb84e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xff780e51e4dbf4c7f903baf,
            limb1: 0xbab1f4540a8b6711757eff80,
            limb2: 0x71731ae54ed27a5
        },
        r0a1: u288 {
            limb0: 0xdab201162daa7e9123447bca,
            limb1: 0x7c6c435d7fd4817679bb07fc,
            limb2: 0x28fe499fbe4b334
        },
        r1a0: u288 {
            limb0: 0x7b4b3ad3e725d7d20142c0c1,
            limb1: 0x51543a9ed36f8d95713ce112,
            limb2: 0x2f88fb9269417101
        },
        r1a1: u288 {
            limb0: 0x29e23ecbcb5921d658dffb7,
            limb1: 0x137c0a23b8be6507af19d5b1,
            limb2: 0x5f5d21af4e5adad
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd749f5048d7627b92f201ac7,
            limb1: 0xcd741fb0d8031342d53b82cf,
            limb2: 0x136faaf95350b8b2
        },
        r0a1: u288 {
            limb0: 0x8165172bb8e0864a73bf8e67,
            limb1: 0xa69ca5003746018d2e522a8c,
            limb2: 0x2bda5f2cba17ddf8
        },
        r1a0: u288 {
            limb0: 0x7ef8340f2be1ed7b52de2340,
            limb1: 0x64f8f235efd87a29e639cc07,
            limb2: 0xade81d11770742a
        },
        r1a1: u288 {
            limb0: 0x8a7386fa7395ec10e1db1739,
            limb1: 0xef43af902b7e8a104d781b80,
            limb2: 0xf95932779f6b8bc
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e7b3a5a35456f42e87968e6,
            limb1: 0xb4303f5093c3a460674a2fcd,
            limb2: 0x2b5331f03b8fa15f
        },
        r0a1: u288 {
            limb0: 0x7cea371d64d8bd0fc5b9427e,
            limb1: 0x76208e15fc175e352c274fbe,
            limb2: 0x5ceb46647d41234
        },
        r1a0: u288 {
            limb0: 0x6cdac06bfcf041a30435a560,
            limb1: 0x15a7ab7ed1df6d7ed12616a6,
            limb2: 0x2520b0f462ad4724
        },
        r1a1: u288 {
            limb0: 0xe8b65c5fff04e6a19310802f,
            limb1: 0xc96324a563d5dab3cd304c64,
            limb2: 0x230de25606159b1e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe624182aa555243abd7e5511,
            limb1: 0x334fac0c1ffbbcbcdc1154c5,
            limb2: 0x89bac70d432bf63
        },
        r0a1: u288 {
            limb0: 0xca5bfbafea561f3055b05682,
            limb1: 0x5883ffe6c7f34dcc5ba6d000,
            limb2: 0x5170fbc80611514
        },
        r1a0: u288 {
            limb0: 0x421874d0fc7ac46c872aec30,
            limb1: 0x409effcbf65b4b570c0746e0,
            limb2: 0x26e3c6b9d6d776de
        },
        r1a1: u288 {
            limb0: 0x42df4488d04f2666e5b180d7,
            limb1: 0x83a93c4443ffd9fad9991e13,
            limb2: 0xf564f296e5d5349
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb2236e5462d1e11842039bb5,
            limb1: 0x8d746dd0bb8bb2a455d505c1,
            limb2: 0x2fd3f4a905e027ce
        },
        r0a1: u288 {
            limb0: 0x3d6d9836d71ddf8e3b741b09,
            limb1: 0x443f16e368feb4cb20a5a1ab,
            limb2: 0xb5f19dda13bdfad
        },
        r1a0: u288 {
            limb0: 0x4e5612c2b64a1045a590a938,
            limb1: 0xbca215d075ce5769db2a29d7,
            limb2: 0x161e651ebdfb5065
        },
        r1a1: u288 {
            limb0: 0xc02a55b6685351f24e4bf9c7,
            limb1: 0x4134240119050f22bc4991c8,
            limb2: 0x300bd9f8d76bbc11
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe9296a3a3aed4c4143d2e0ba,
            limb1: 0x7de973514b499b2da739b3e6,
            limb2: 0x1b4b807986fcdee0
        },
        r0a1: u288 {
            limb0: 0xb9295fecce961afe0c5e6dad,
            limb1: 0xc4e30c322bcae6d526c4de95,
            limb2: 0x1fee592f513ed6b2
        },
        r1a0: u288 {
            limb0: 0x7245f5e5e803d0d448fafe21,
            limb1: 0xcbdc032ecb3b7a63899c53d0,
            limb2: 0x1fde9ffc17accfc3
        },
        r1a1: u288 {
            limb0: 0x8edcc1b2fdd35c87a7814a87,
            limb1: 0x99d54b5c2fe171c49aa9cb08,
            limb2: 0x130ef740e416a6fe
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x860ece0008f0360f6ca464f9,
            limb1: 0x89a2df04f7b8e0410aae4f14,
            limb2: 0x1cdc350a8d46dfc7
        },
        r0a1: u288 {
            limb0: 0x334f0d3f06df8e89c6dc55d3,
            limb1: 0x31f61e1f65313dfd0642c976,
            limb2: 0x10564d50fd55474e
        },
        r1a0: u288 {
            limb0: 0xa622359cb2b84e7aa13ef505,
            limb1: 0xa60805b51ecc220e225efa77,
            limb2: 0xced09bdca65ad52
        },
        r1a1: u288 {
            limb0: 0x9cbc92b096f796e5d2e71129,
            limb1: 0xe22803ba1336839c7a5643bd,
            limb2: 0xcb8c8deb0338fcd
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x12970de3d620fb05dea8f634,
            limb1: 0x430fc00fcda4ea8b1d2d5029,
            limb2: 0x257042cf298b1e9d
        },
        r0a1: u288 {
            limb0: 0xdae9f54796b2f8ab2bb6eefb,
            limb1: 0xb946dc52ee25f22f2c7566c,
            limb2: 0xdf28bc294cd3e6f
        },
        r1a0: u288 {
            limb0: 0xe574417a7aebd970b5930b08,
            limb1: 0x65757dee6dcb9ee52054bfe1,
            limb2: 0x1d891d900174ff17
        },
        r1a1: u288 {
            limb0: 0x821cb4675431fb8f37031ff9,
            limb1: 0x79bd1d504c7fe0bee3284cff,
            limb2: 0x927c6834663acfa
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x537ecf0916b38aeea21d4e47,
            limb1: 0x181a00de27ba4be1b380d6c8,
            limb2: 0x8c2fe2799316543
        },
        r0a1: u288 {
            limb0: 0xe68fff5ee73364fff3fe403b,
            limb1: 0x7b8685c8a725ae79cfac8f99,
            limb2: 0x7b4be349766aba4
        },
        r1a0: u288 {
            limb0: 0xdf7c93c0095545ad5e5361ea,
            limb1: 0xce316c76191f1e7cd7d03f3,
            limb2: 0x22ea21f18ddec947
        },
        r1a1: u288 {
            limb0: 0xa19620b4c32db68cc1c2ef0c,
            limb1: 0xffa1e4be3bed5faba2ccbbf4,
            limb2: 0x16fc78a64c45f518
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2b6af476f520b4bf804415bc,
            limb1: 0xd949ee7f9e8874698b090fca,
            limb2: 0x34db5e5ec2180cf
        },
        r0a1: u288 {
            limb0: 0x3e06a324f038ac8abcfb28d7,
            limb1: 0xc2e6375b7a83c0a0145f8942,
            limb2: 0x2247e79161483763
        },
        r1a0: u288 {
            limb0: 0x708773d8ae3a13918382fb9d,
            limb1: 0xaf83f409556e32aa85ae92bf,
            limb2: 0x9af0a924ae43ba
        },
        r1a1: u288 {
            limb0: 0xa6fded212ff5b2ce79755af7,
            limb1: 0x55a2adfb2699ef5de6581b21,
            limb2: 0x2476e83cfe8daa5c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x28709906303ed75a4a69d6a,
            limb1: 0x2eeb19e55004caec7398f65d,
            limb2: 0x10c05c9e225bba88
        },
        r0a1: u288 {
            limb0: 0x42eedd945c0ac8ce292781bd,
            limb1: 0x44d3162ff292fd937a2e2a49,
            limb2: 0xda474e18b32712d
        },
        r1a0: u288 {
            limb0: 0x87fda2a8fd06b44a43426d08,
            limb1: 0x77606835bb84264584add393,
            limb2: 0x419fc77d1fb454
        },
        r1a1: u288 {
            limb0: 0xf3975171059f46cfdf01878e,
            limb1: 0x76cdec4ccf0432e4a92483b7,
            limb2: 0x1b74da57abb13777
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb17aa8b75076292fcd18a081,
            limb1: 0x4033d4158e789045ff93b6f6,
            limb2: 0x2b35ecc9f4a3327d
        },
        r0a1: u288 {
            limb0: 0xdf7853d45778abde305f633,
            limb1: 0xd2e31df5b623d63d12283dd3,
            limb2: 0x83d637d230ed2d1
        },
        r1a0: u288 {
            limb0: 0x86adaa252d5c5675bcc65e19,
            limb1: 0xf8ca49f8c228a1a5cf3e19b7,
            limb2: 0x249993a805fcfd47
        },
        r1a1: u288 {
            limb0: 0xc13ecc2c844417be70867421,
            limb1: 0xafad7a82fd3a3483731aa02a,
            limb2: 0x2dcc0c1fd94eae0a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1c4759bcf7c607fe3f839d4d,
            limb1: 0xea91f311da73327e2ed40785,
            limb2: 0x2017052c72360f42
        },
        r0a1: u288 {
            limb0: 0x38cf8a4368c0709980199fc3,
            limb1: 0xfc9047885996c19e84d7d4ea,
            limb2: 0x1795549eb0b97783
        },
        r1a0: u288 {
            limb0: 0xb70f7ecfbec0eaf46845e8cc,
            limb1: 0x9ddf274c2a9f89ea3bc4d66f,
            limb2: 0xcc6f106abfcf377
        },
        r1a1: u288 {
            limb0: 0xf6ff11ce29186237468c2698,
            limb1: 0x5c629ad27bb61e4826bb1313,
            limb2: 0x2014c6623f1fb55e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7cbc0b6de8763c0de1aa8156,
            limb1: 0x53dc5d00626fe27793063e8b,
            limb2: 0x2b5880e955cc17af
        },
        r0a1: u288 {
            limb0: 0x5a7b22bb6f3c51e3033f9169,
            limb1: 0xd893d0ea5bdbaec01ba857d9,
            limb2: 0x332a177e7b97989
        },
        r1a0: u288 {
            limb0: 0x59c9fe7b345f7e4d234a252f,
            limb1: 0x22186872e7ca2bc447578bc2,
            limb2: 0x140c2218e40ad0dd
        },
        r1a1: u288 {
            limb0: 0xe1c00b69040170f2ba73467c,
            limb1: 0xbe62dcff34e40d25a7238985,
            limb2: 0x29b249fbfd88254c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc648054e4b6134bbfd68487f,
            limb1: 0xdf0506dad3f3d098c13a6386,
            limb2: 0x26bebeb6f46c2e8c
        },
        r0a1: u288 {
            limb0: 0x9d0cdb28a94204776c6e6ba6,
            limb1: 0x303f02dfe619752b1607951d,
            limb2: 0x1127d8b17ef2c064
        },
        r1a0: u288 {
            limb0: 0xe34ca1188b8db4e4694a696c,
            limb1: 0x243553602481d9b88ca1211,
            limb2: 0x1f8ef034831d0132
        },
        r1a1: u288 {
            limb0: 0xe3a5dfb1785690dad89ad10c,
            limb1: 0xd690b583ace24ba033dd23e0,
            limb2: 0x405d0709e110c03
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9c96dac830d3ee6902568e4c,
            limb1: 0x4b64c0c6097d8fface859928,
            limb2: 0x5badd71c5f0f368
        },
        r0a1: u288 {
            limb0: 0xb4a5d6ab5519e4b2ab06fa8b,
            limb1: 0x850c951a81c24e20a9efbda9,
            limb2: 0x1686faf45e8e57cd
        },
        r1a0: u288 {
            limb0: 0x2c209a470473f8907148d51f,
            limb1: 0x1c9e1ed15233ce3973d41d55,
            limb2: 0x10af8ce164ac85fd
        },
        r1a1: u288 {
            limb0: 0x20d62bc0aa76333385951da6,
            limb1: 0xa0c0b4439c06adee851b3032,
            limb2: 0x5bd36b84e5b3549
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72cc2cef2785ce4ff4e9b7af,
            limb1: 0x60ed5b9c207d7f31fb6234ab,
            limb2: 0x1bb17a4bc7b643ed
        },
        r0a1: u288 {
            limb0: 0x9424eb15b502cde7927c7530,
            limb1: 0xa0e33edbbaa9de8e9c206059,
            limb2: 0x2b9a3a63bbf4af99
        },
        r1a0: u288 {
            limb0: 0x423811cb6386e606cf274a3c,
            limb1: 0x8adcc0e471ecfe526f56dc39,
            limb2: 0x9169a8660d14368
        },
        r1a1: u288 {
            limb0: 0xf616c863890c3c8e33127931,
            limb1: 0xcc9414078a6da6989dae6b91,
            limb2: 0x594d6a7e6b34ab2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdc88fe4d0a0947d03214e2bd,
            limb1: 0x67e5b32cfb7702585263df7e,
            limb2: 0x1ba27ea20d24a4b2
        },
        r0a1: u288 {
            limb0: 0x5a5e2d79a6dbd692d14d92df,
            limb1: 0x7c9c78952a67c9f26ebbaa73,
            limb2: 0x1561226de94dc7ca
        },
        r1a0: u288 {
            limb0: 0xc6d237970553d8dad75b0a71,
            limb1: 0x29f019b0081f02244eb57c18,
            limb2: 0x16df6124ec05fe03
        },
        r1a1: u288 {
            limb0: 0x86df8818641b3bb59b9f72e0,
            limb1: 0xc27ded401718fa6f694a504b,
            limb2: 0x1d69be2883e0fb8b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf2d619ae78049bf9141c35cf,
            limb1: 0x717f8b10d469a1ee2d91f191,
            limb2: 0x2c72c82fa8afe345
        },
        r0a1: u288 {
            limb0: 0xb89321223b82a2dc793c0185,
            limb1: 0x71506a0cf4adb8e51bb7b759,
            limb2: 0x2c13b92a98651492
        },
        r1a0: u288 {
            limb0: 0x4947ef2c89276f77f9d20942,
            limb1: 0xb454d68685ab6b6976e71ec5,
            limb2: 0x19a938d0e78a3593
        },
        r1a1: u288 {
            limb0: 0xbe883eb119609b489c01c905,
            limb1: 0xaa06779922047f52feac5ce6,
            limb2: 0x76977a3015dc164
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x43a96a588005043a46aadf2c,
            limb1: 0xa37b89d8a1784582f0c52126,
            limb2: 0x22e9ef3f5d4b2297
        },
        r0a1: u288 {
            limb0: 0x8c6f6d8474cf6e5a58468a31,
            limb1: 0xeb1ce6ac75930ef1c79b07e5,
            limb2: 0xf49839a756c7230
        },
        r1a0: u288 {
            limb0: 0x82b84693a656c8e8c1f962fd,
            limb1: 0x2c1c8918ae80282208b6b23d,
            limb2: 0x14d3504b5c8d428f
        },
        r1a1: u288 {
            limb0: 0x60ef4f4324d5619b60a3bb84,
            limb1: 0x6d3090caefeedbc33638c77a,
            limb2: 0x159264c370c89fec
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x47bd62a92586a198e7b751aa,
            limb1: 0x35669fd11fd2e47bb0bc44f2,
            limb2: 0x44e63a6adab966c
        },
        r0a1: u288 {
            limb0: 0xae1a2137e865c700f18da937,
            limb1: 0x26d42ae8c2007aa5fbaf1c51,
            limb2: 0x27fc86ea8e6b824f
        },
        r1a0: u288 {
            limb0: 0x26582d71d9727ae5ca29a816,
            limb1: 0x84f6d187e256a4d60882fa9b,
            limb2: 0xd9a44b8c8a19ba9
        },
        r1a1: u288 {
            limb0: 0x5491a241f8f07de9a3f6b866,
            limb1: 0xa3a8863e662c865cb5c56fdb,
            limb2: 0x281e4722eaed366b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x730f91f0a7a9f0ab9b74fb34,
            limb1: 0x25496a6dff4421bfcf7ea55b,
            limb2: 0x179dbe79533f9e02
        },
        r0a1: u288 {
            limb0: 0x737e834d345566c785df62f9,
            limb1: 0x69f6c4d76b9278ebfecf750a,
            limb2: 0x1002d9eeba12263e
        },
        r1a0: u288 {
            limb0: 0x221077af77c178dae3959735,
            limb1: 0xe572e4978477faaf9aad851d,
            limb2: 0x2489eb4828c9c35b
        },
        r1a1: u288 {
            limb0: 0x42cf5d1ad0a28d72956a0d59,
            limb1: 0x71528be173727456d1443818,
            limb2: 0xbeb56cf238ce4b1
        }
    },
];

