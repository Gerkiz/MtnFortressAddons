local Public = require 'common'

data:extend(
    {
        Public.common.create_inital_action(
            {
                name = 'mtn-addon-acid-stream',
                scale = 1,
                tint = Public.layers.layer_3,
                action = {
                    type = 'direct',
                    action_delivery = {
                        type = 'instant',
                        target_effects = {
                            Public.common.create_worm_sound_effects,
                            {
                                type = 'create-fire',
                                entity_name = 'acid-splash-fire-worm-big'
                            },
                            {
                                type = 'nested-result',
                                action = {
                                    type = 'area',
                                    radius = 3,
                                    force = 'enemy',
                                    action_delivery = {
                                        type = 'instant',
                                        target_effects = {
                                            {
                                                type = 'damage',
                                                damage = { amount = 10, type = 'acid' }
                                            },
                                            {
                                                type = 'damage',
                                                damage = { amount = 2, type = 'impact' }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        ),
        Public.common.create_inital_action(
            {
                name = 'mtn-addon-poison-stream',
                scale = 1,
                tint = Public.layers.layer_9,
                action = {
                    type = 'direct',
                    action_delivery = {
                        type = 'instant',
                        target_effects = {
                            Public.common.create_worm_sound_effects,
                            {
                                type = 'create-entity',
                                entity_name = 'small-poison-cloud'
                            },
                            {
                                type = 'nested-result',
                                action = {
                                    type = 'area',
                                    radius = 3,
                                    force = 'enemy',
                                    action_delivery = {
                                        type = 'instant',
                                        target_effects = {
                                            {
                                                type = 'damage',
                                                damage = { amount = 8, type = 'poison' }
                                            },
                                            {
                                                type = 'damage',
                                                damage = { amount = 2, type = 'impact' }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        ),
        Public.common.create_inital_action(
            {
                name = 'mtn-addon-fire-stream',
                scale = 1,
                tint = Public.layers.layer_11,
                action = {
                    type = 'direct',
                    action_delivery = {
                        type = 'instant',
                        target_effects = {
                            Public.common.create_worm_sound_effects,
                            {
                                type = 'create-fire',
                                entity_name = 'fire-flame'
                            },
                            {
                                type = 'nested-result',
                                action = {
                                    type = 'area',
                                    radius = 3,
                                    force = 'enemy',
                                    action_delivery = {
                                        type = 'instant',
                                        target_effects = {
                                            {
                                                type = 'damage',
                                                damage = { amount = 8, type = 'fire' }
                                            },
                                            {
                                                type = 'damage',
                                                damage = { amount = 2, type = 'impact' }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        ),
        Public.common.create_inital_action(
            {
                name = 'mtn-addon-explosive-stream',
                scale = 1,
                tint = Public.layers.layer_5,
                action = {
                    type = 'direct',
                    action_delivery = {
                        type = 'instant',
                        target_effects = {
                            Public.common.create_worm_sound_effects,
                            {
                                type = 'create-entity',
                                entity_name = 'explosion'
                            },
                            {
                                type = 'nested-result',
                                action = {
                                    type = 'area',
                                    radius = 3,
                                    force = 'enemy',
                                    action_delivery = {
                                        type = 'instant',
                                        target_effects = {
                                            {
                                                type = 'damage',
                                                damage = { amount = 10, type = 'explosion' }
                                            },
                                            {
                                                type = 'damage',
                                                damage = { amount = 2, type = 'impact' }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        ),
        Public.common.create_inital_action(
            {
                name = 'mtn-addon-electrical-stream',
                scale = 1,
                tint = Public.layers.layer_7,
                action = {
                    type = 'direct',
                    action_delivery = {
                        type = 'instant',
                        target_effects = {
                            Public.common.create_worm_sound_effects,
                            {
                                type = 'nested-result',
                                action = {
                                    type = 'area',
                                    radius = 3,
                                    force = 'enemy',
                                    action_delivery = {
                                        type = 'instant',
                                        target_effects = {
                                            {
                                                type = 'damage',
                                                damage = { amount = 10, type = 'electric' }
                                            },
                                            {
                                                type = 'damage',
                                                damage = { amount = 2, type = 'impact' }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        ),
        Public.common.create_inital_action(
            {
                name = 'mtn-addon-piercing-stream',
                scale = 1,
                tint = Public.layers.layer_1,
                action = {
                    type = 'direct',
                    action_delivery = {
                        type = 'instant',
                        target_effects = {
                            Public.common.create_worm_sound_effects,
                            {
                                type = 'nested-result',
                                action = {
                                    type = 'area',
                                    radius = 3,
                                    force = 'enemy',
                                    action_delivery = {
                                        type = 'instant',
                                        target_effects = {
                                            {
                                                type = 'damage',
                                                damage = { amount = 10, type = 'mtn-addon-pierce' }
                                            },
                                            {
                                                type = 'damage',
                                                damage = { amount = 2, type = 'impact' }
                                            }
                                        }
                                    }
                                }
                            },
                        }
                    }
                }
            }
        ),
        Public.common.create_inital_action(
            {
                name = 'mtn-addon-all-the-streams',
                scale = 1,
                tint = Public.layers.layer_13,
                action = {
                    type = 'direct',
                    action_delivery = {
                        type = 'instant',
                        target_effects = {
                            Public.common.create_worm_sound_effects,
                            {
                                type = 'nested-result',
                                action = {
                                    type = 'area',
                                    radius = 3,
                                    force = 'enemy',
                                    action_delivery = {
                                        type = 'instant',
                                        target_effects = {
                                            {
                                                type = 'damage',
                                                damage = { amount = 3, type = 'electric' }
                                            },
                                            {
                                                type = 'damage',
                                                damage = { amount = 3, type = 'explosion' }
                                            },
                                            {
                                                type = 'damage',
                                                damage = { amount = 3, type = 'fire' }
                                            },
                                            {
                                                type = 'damage',
                                                damage = { amount = 2, type = 'impact' }
                                            },
                                            {
                                                type = 'create-sticker',
                                                sticker = 'fire-sticker'
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        )
    }
)
