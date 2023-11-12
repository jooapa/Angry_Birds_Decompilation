local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1
L0_1 = {}
actions = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = actions
L3_1 = {}
L4_1 = {}
L4_1.timer = 0
L3_1.params = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1.action = L4_1
L2_1.onLevelLoad = L3_1
L2_1 = actions
L3_1 = {}
L4_1 = {}
L4_1.timer = 0
L3_1.params = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1.action = L4_1
L2_1.onBeforeLevelLoad = L3_1
L2_1 = actions
L3_1 = {}
L4_1 = {}
L4_1.timer = 1
L3_1.params = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = playAudio
  L2_2 = A0_2.music
  L3_2 = 1
  L4_2 = false
  L5_2 = 4
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L3_1.action = L4_1
L2_1.playBossMusic = L3_1
L2_1 = actions
L3_1 = {}
L4_1 = {}
L4_1.timer = 0
L3_1.params = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = startedBirdTutorial
  if not L1_2 then
    L1_2 = addEventCall
    L2_2 = "startTutorial"
    L3_2 = A0_2
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = true
    startedBirdTutorial = L1_2
  else
    L1_2 = addEventCall
    L2_2 = "endTutorial"
    L3_2 = A0_2
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = false
    startedBirdTutorial = L1_2
  end
end
L3_1.action = L4_1
L2_1.onRunEventFromGame = L3_1
L2_1 = actions
L3_1 = {}
L4_1 = {}
L4_1.timer = 0.2
L3_1.params = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L1_2 = setPosition
    L2_2 = A0_2.name
    L3_2 = objects
    L3_2 = L3_2.world
    L4_2 = A0_2.name
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.startingX
    L4_2 = objects
    L4_2 = L4_2.world
    L5_2 = A0_2.name
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.startingY
    L1_2(L2_2, L3_2, L4_2)
  end
end
L3_1.action = L4_1
L2_1.setPosition = L3_1
L2_1 = actions
L3_1 = {}
L4_1 = {}
L4_1.timer = 0
L3_1.params = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = destroyObject
    L2_2 = A0_2.name
    L1_2(L2_2)
  end
end
L3_1.action = L4_1
L2_1.destroy = L3_1
L2_1 = actions
L3_1 = {}
L4_1 = {}
L4_1.timer = 0.3
L3_1.params = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.other
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.name
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = objects
      L1_2 = L1_2.world
      L2_2 = A0_2.other
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.controllable
      if L1_2 then
        L1_2 = destroyObject
        L2_2 = A0_2.name
        L1_2(L2_2)
      end
    end
  end
end
L3_1.action = L4_1
L2_1.delayedDestroyObject = L3_1
L2_1 = 0
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = createObject
  L2_2 = blockTable
  L3_2 = A0_2.obj
  L3_2 = L3_2.definition
  L4_2 = A0_2.obj
  L4_2 = L4_2.definition
  L5_2 = "respawned"
  L6_2 = L2_1
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = A0_2.obj
  L5_2 = L5_2.startingX
  L6_2 = A0_2.obj
  L6_2 = L6_2.startingY
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = L2_1
  L1_2 = L1_2 + 1
  L2_1 = L1_2
end
L4_1.action = L5_1
L3_1.respawnInOriginalPosition = L4_1
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = setVelocity
    L2_2 = A0_2.name
    L3_2 = 5
    L4_2 = 20
    L1_2(L2_2, L3_2, L4_2)
  end
end
L4_1.action = L5_1
L3_1.setAsteroidVelocityAndRotation = L4_1
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = setPhysicsEnabled
  L2_2 = false
  L1_2(L2_2)
end
L4_1.action = L5_1
L3_1.physicsOff = L4_1
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = setPhysicsEnabled
  L2_2 = true
  L1_2(L2_2)
end
L4_1.action = L5_1
L3_1.physicsOn = L4_1
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.timer = 0.1
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.loopingParticles
    L3_2 = particleTable
    L3_2 = L3_2.particles
    L3_2 = L3_2[L2_2]
    if L3_2 then
      L3_2 = addParticles
      L4_2 = A0_2.name
      L5_2 = L2_2
      L6_2 = particleTable
      L6_2 = L6_2.particles
      L6_2 = L6_2[L2_2]
      L6_2 = L6_2.amount
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = pairs
      L4_2 = L2_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = particleTable
        L8_2 = L8_2.particles
        L8_2 = L8_2[L7_2]
        if L8_2 then
          L8_2 = addParticles
          L9_2 = A0_2.name
          L10_2 = L7_2
          L11_2 = particleTable
          L11_2 = L11_2.particles
          L11_2 = L11_2[L7_2]
          L11_2 = L11_2.amount
          L8_2(L9_2, L10_2, L11_2)
        end
      end
    end
    L3_2 = blockTable
    L3_2 = L3_2.blocks
    L4_2 = L1_2.definition
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.loopingParticlesInterval
    if not L3_2 then
      L3_2 = 0.1
    end
    L4_2 = addEventCall
    L5_2 = "spawnLoopingParticles"
    L6_2 = A0_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L4_1.action = L5_1
L3_1.spawnLoopingParticles = L4_1
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.obj
  L2_2 = blockTable
  L3_2 = false
  L4_2 = L1_2.collided
  if L4_2 == nil then
    L4_2 = L1_2.onCollisionEnter
    if L4_2 == "addCollisionVelocity" then
      L4_2 = L1_2.splitIce
      if L4_2 ~= true then
        L4_2 = L1_2.splitFire
        if L4_2 ~= true then
          L4_2 = L1_2.splitRadiation
          if L4_2 ~= true then
            L3_2 = true
          end
        end
      end
    end
  end
  L4_2 = L1_2.angle
  L5_2 = L2_2.blocks
  L6_2 = L1_2.definition
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.angleOffset
  if not L5_2 then
    L5_2 = 0
  end
  L4_2 = L4_2 + L5_2
  L5_2 = L1_2.savedCollisionVel
  if L5_2 then
    L5_2 = getLinearVelocity
    L6_2 = L1_2.name
    L5_2, L6_2 = L5_2(L6_2)
    L1_2.startingYVel = L6_2
    L1_2.startingXVel = L5_2
  end
  L5_2 = {}
  L6_2 = L2_2.blocks
  L7_2 = L1_2.definition
  L6_2 = L6_2[L7_2]
  L5_2.definition = L6_2
  L6_2 = L1_2.x
  L5_2.x = L6_2
  L6_2 = L1_2.y
  L5_2.y = L6_2
  L5_2.angle = L4_2
  L6_2 = L1_2.startingXVel
  L5_2.xVel = L6_2
  L6_2 = L1_2.startingYVel
  L5_2.yVel = L6_2
  L6_2 = L2_2.blocks
  L7_2 = L1_2.definition
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.keepOriginalVelocity
  L5_2.keepOriginalVelocity = L6_2
  L6_2 = L1_2.startImpulseData
  L5_2.startImpulseData = L6_2
  L5_2.randomizeParentVelocity = true
  L6_2 = L1_2.splitIce
  if L6_2 == true then
    L6_2 = L2_2.blocks
    L7_2 = L1_2.definition
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.spawnedObjectsFrozen
    if L6_2 then
      L6_2 = L2_2.blocks
      L7_2 = L1_2.definition
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.appliedExplosionForce
      L5_2.explosionForce = L6_2
      L6_2 = spawnObjects
      L7_2 = L2_2.blocks
      L8_2 = L1_2.definition
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.spawnedObjectsFrozen
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
  end
  else
    L6_2 = L1_2.splitFire
    if L6_2 == true then
      L6_2 = L2_2.blocks
      L7_2 = L1_2.definition
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.spawnedObjectsFire
      if L6_2 then
        L6_2 = L2_2.blocks
        L7_2 = L1_2.definition
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.appliedExplosionForce
        L5_2.explosionForce = L6_2
        L6_2 = spawnObjects
        L7_2 = L2_2.blocks
        L8_2 = L1_2.definition
        L7_2 = L7_2[L8_2]
        L7_2 = L7_2.spawnedObjectsFire
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
    end
    else
      L6_2 = L1_2.splitRadiation
      if L6_2 == true then
        L6_2 = L2_2.blocks
        L7_2 = L1_2.definition
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.spawnedObjectsRadiation
        if L6_2 then
          L6_2 = L2_2.blocks
          L7_2 = L1_2.definition
          L6_2 = L6_2[L7_2]
          L6_2 = L6_2.appliedExplosionForce
          L5_2.explosionForce = L6_2
          L6_2 = spawnObjects
          L7_2 = L2_2.blocks
          L8_2 = L1_2.definition
          L7_2 = L7_2[L8_2]
          L7_2 = L7_2.spawnedObjectsRadiation
          L8_2 = L5_2
          L6_2(L7_2, L8_2)
      end
      else
        if L3_2 == true then
          L6_2 = L2_2.blocks
          L7_2 = L1_2.definition
          L6_2 = L6_2[L7_2]
          L6_2 = L6_2.appliedExplosionForce
          L5_2.explosionForce = L6_2
        end
        L6_2 = spawnObjects
        L7_2 = L2_2.blocks
        L8_2 = L1_2.definition
        L7_2 = L7_2[L8_2]
        L7_2 = L7_2.spawnedObjects
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L4_1.action = L5_1
L3_1.splitAsteroid = L4_1
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "addCollisionVelocity"
  L1_2(L2_2)
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = L1_2.strength
    if L2_2 <= 0 then
      L1_2.savedCollisionVel = true
      L1_2.startImpulseData = nil
      L1_2.collided = true
    end
  end
end
L4_1.action = L5_1
L3_1.addCollisionVelocity = L4_1
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.obj
  L2_2 = blockTable
  L3_2 = getObjectDefinition
  L4_2 = L1_2.name
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = makeExplosion
    L5_2 = L1_2
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L4_1.action = L5_1
L3_1.makeBurningAsteroidShardExplosion = L4_1
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = addEventCall
  L2_2 = "spawnLoopingParticles"
  L3_2 = A0_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = addEventCall
  L2_2 = "destroy"
  L3_2 = {}
  L4_2 = A0_2.name
  L3_2.name = L4_2
  L4_2 = 5
  L1_2(L2_2, L3_2, L4_2)
end
L4_1.action = L5_1
L3_1.initializeBurningAsteroidPiece = L4_1
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = addEventCall
  L2_2 = "destroy"
  L3_2 = {}
  L4_2 = A0_2.name
  L3_2.name = L4_2
  L4_2 = 10
  L1_2(L2_2, L3_2, L4_2)
end
L4_1.action = L5_1
L3_1.initializeSelfDestructSequence = L4_1
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = addEventCall
  L2_2 = "spawnCrystalShards"
  L3_2 = A0_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = addEventCall
  L2_2 = "spawnCollapsingGravityField"
  L3_2 = A0_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
L4_1.action = L5_1
L3_1.crystalPlanetDestroyed = L4_1
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.obj
  L2_2 = blockTable
  L3_2 = L1_2.angle
  L4_2 = L2_2.blocks
  L5_2 = L1_2.definition
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.angleOffset
  if not L4_2 then
    L4_2 = 0
  end
  L3_2 = L3_2 + L4_2
  L4_2 = {}
  L5_2 = L2_2.blocks
  L6_2 = L1_2.definition
  L5_2 = L5_2[L6_2]
  L4_2.definition = L5_2
  L5_2 = L1_2.x
  L4_2.x = L5_2
  L5_2 = L1_2.y
  L4_2.y = L5_2
  L4_2.angle = L3_2
  L5_2 = L1_2.startingXVel
  L4_2.xVel = L5_2
  L5_2 = L1_2.startingYVel
  L4_2.yVel = L5_2
  L5_2 = L2_2.blocks
  L6_2 = L1_2.definition
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.keepOriginalVelocity
  L4_2.keepOriginalVelocity = L5_2
  L5_2 = spawnObjects
  L6_2 = L2_2.blocks
  L7_2 = L1_2.definition
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.spawnedObjects
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L4_1.action = L5_1
L3_1.spawnCrystalShards = L4_1
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.time = 0
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.obj
  L1_2 = L1_2.linkedObject
  if L1_2 then
    function L2_2()
      local L0_3, L1_3
      L0_3 = spawnCollapsingGravityFieldCounter
      if not L0_3 then
        L0_3 = 0
      end
      L0_3 = L0_3 + 1
      spawnCollapsingGravityFieldCounter = L0_3
      L0_3 = "BLOCK_SENSOR_GRAVITATION_PROP_"
      L1_3 = spawnCollapsingGravityFieldCounter
      L0_3 = L0_3 .. L1_3
      return L0_3
    end
    L3_2 = objects
    L3_2 = L3_2.world
    L3_2 = L3_2[L1_2]
    L4_2 = createObject
    L5_2 = blockTable
    L6_2 = "BLOCK_SENSOR_GRAVITATION_PROP"
    L7_2 = L2_2
    L7_2 = L7_2()
    L8_2 = A0_2.obj
    L8_2 = L8_2.x
    L9_2 = A0_2.obj
    L9_2 = L9_2.y
    L10_2 = L3_2.radius
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = objects
    L5_2 = L5_2.world
    L5_2 = L5_2[L4_2]
    L6_2 = L3_2.radius
    L5_2.initialRadius = L6_2
    L6_2 = L3_2.radius
    L5_2.radius = L6_2
    L6_2 = A0_2.obj
    L6_2 = L6_2.explosionRadius
    L5_2.explosionRadius = L6_2
    L6_2 = A0_2.obj
    L6_2 = L6_2.explosionForce
    L5_2.explosionForce = L6_2
    L6_2 = L3_2.gravitationMinForce
    L5_2.gravitationMinForce = L6_2
    L6_2 = L3_2.gravitationMaxForce
    L5_2.gravitationMaxForce = L6_2
    L6_2 = setObjectParameter
    L7_2 = L4_2
    L8_2 = 25
    L9_2 = L3_2.gravitationMinForce
    L9_2 = L9_2 * 0.25
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = setObjectParameter
    L7_2 = L4_2
    L8_2 = 26
    L9_2 = L3_2.gravitationMaxForce
    L9_2 = L9_2 * 0.25
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = setObjectParameter
    L7_2 = L4_2
    L8_2 = 33
    L9_2 = 0
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = L3_2.canBeDeleted
    if L6_2 then
      L6_2 = objects
      L6_2 = L6_2.world
      L6_2[L1_2] = nil
    else
      L3_2.canBeDeleted = true
    end
    L6_2 = addEventCall
    L7_2 = "updateCollapsingGravityField"
    L8_2 = {}
    L8_2.name = L4_2
    L9_2 = {}
    L9_2.duration = 1.275
    L8_2.implosion = L9_2
    L9_2 = {}
    L9_2.duration = 0.33
    L9_2.size = 128
    L8_2.explosion = L9_2
    L9_2 = A0_2.obj
    L9_2 = L9_2.radius
    L8_2.objectRadius = L9_2
    L9_2 = 0
    L6_2(L7_2, L8_2, L9_2)
  end
end
L4_1.action = L5_1
L3_1.spawnCollapsingGravityField = L4_1
L3_1 = actions
L4_1 = {}
L5_1 = {}
L5_1.time = 0
L4_1.params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = 0.1
  L3_2 = A0_2.timer
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = A0_2.dt
  L3_2 = L3_2 + L4_2
  A0_2.timer = L3_2
  L3_2 = A0_2.timer
  L4_2 = A0_2.dt
  L3_2 = L3_2 - L4_2
  if L2_2 > L3_2 then
    L3_2 = A0_2.timer
    if L2_2 <= L3_2 then
      L3_2 = playAudio
      L4_2 = "planet_explosion"
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2.collapsing
  L3_2 = L3_2 == nil or L3_2
  A0_2.collapsing = L3_2
  L3_2 = A0_2.collapsing
  if L3_2 then
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = math
      L1_3 = L1_3.pow
      L2_3 = math
      L2_3 = L2_3.min
      L3_3 = A0_3 * 1.5
      L4_3 = 1
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = 5
      return L1_3(L2_3, L3_3)
    end
    L4_2 = L1_2.initialRadius
    L5_2 = L3_2
    L6_2 = A0_2.timer
    L7_2 = A0_2.implosion
    L7_2 = L7_2.duration
    L6_2 = L6_2 / L7_2
    L5_2 = L5_2(L6_2)
    L5_2 = 1 - L5_2
    L4_2 = L4_2 * L5_2
    L1_2.radius = L4_2
    L4_2 = A0_2.timer
    L5_2 = A0_2.implosion
    L5_2 = L5_2.duration
    if L4_2 >= L5_2 then
      L4_2 = makeExplosion
      L5_2 = L1_2
      L6_2 = blockTable
      L6_2 = L6_2.blocks
      L7_2 = L1_2.definition
      L6_2 = L6_2[L7_2]
      L4_2(L5_2, L6_2)
      L4_2 = setObjectParameter
      L5_2 = L1_2.name
      L6_2 = 22
      L7_2 = 0
      L4_2(L5_2, L6_2, L7_2)
      A0_2.collapsing = false
      L4_2 = A0_2.objectRadius
      L4_2 = L4_2 * 0.25
      L5_2 = putParticles
      L6_2 = {}
      L7_2 = A0_2.name
      L6_2.objectName = L7_2
      L6_2.particles = "starExplosionAnimation"
      L6_2.minScaleBegin = L4_2
      L6_2.maxScaleBegin = L4_2
      L6_2.minScaleEnd = L4_2
      L6_2.maxScaleEnd = L4_2
      L5_2(L6_2)
      L5_2 = A0_2.objectRadius
      L4_2 = L5_2 * 0.33
      L5_2 = putParticles
      L6_2 = {}
      L7_2 = A0_2.name
      L6_2.objectName = L7_2
      L6_2.particles = "crystalPlanetExplosion"
      L6_2.minScaleBegin = L4_2
      L6_2.maxScaleBegin = L4_2
      L6_2.minScaleEnd = L4_2
      L6_2.maxScaleEnd = L4_2
      L5_2(L6_2)
      L5_2 = putParticles
      L6_2 = {}
      L7_2 = A0_2.name
      L6_2.objectName = L7_2
      L6_2.particles = "crystalBuffStrong"
      L7_2 = A0_2.objectRadius
      L7_2 = L7_2 * 6
      L6_2.amount = L7_2
      L5_2(L6_2)
    end
  else
    L3_2 = A0_2.timer
    L4_2 = A0_2.implosion
    L4_2 = L4_2.duration
    L3_2 = L3_2 - L4_2
    L4_2 = A0_2.explosion
    L4_2 = L4_2.size
    L3_2 = L3_2 * L4_2
    L4_2 = A0_2.explosion
    L4_2 = L4_2.duration
    L3_2 = L3_2 / L4_2
    L1_2.radius = L3_2
    L3_2 = A0_2.timer
    L4_2 = A0_2.implosion
    L4_2 = L4_2.duration
    L5_2 = A0_2.explosion
    L5_2 = L5_2.duration
    L4_2 = L4_2 + L5_2
    if L3_2 > L4_2 then
      L3_2 = destroyObject
      L4_2 = A0_2.name
      L3_2(L4_2)
      return
    end
  end
  L3_2 = addEventCall
  L4_2 = "updateCollapsingGravityField"
  L5_2 = A0_2
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
end
L4_1.action = L5_1
L3_1.updateCollapsingGravityField = L4_1
L3_1 = false
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 0
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = objects
      L1_2 = L1_2.world
      L2_2 = A0_2.other
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.controllable
      if L1_2 then
        L1_2 = L3_1
        if not L1_2 then
          L1_2 = true
          L3_1 = L1_2
          L1_2 = addEventCall
          L2_2 = "slipperPlanetF"
          L3_2 = {}
          L4_2 = A0_2.name
          L3_2.name = L4_2
          L4_2 = A0_2.other
          L3_2.other = L4_2
          L4_2 = 0
          L1_2(L2_2, L3_2, L4_2)
        end
      end
    end
  end
end
L5_1.action = L6_1
L4_1.icePlanetCollision = L5_1
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 0
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = objects
      L1_2 = L1_2.world
      L2_2 = A0_2.other
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.controllable
      if L1_2 then
        L1_2 = false
        L3_1 = L1_2
      end
    end
  end
end
L5_1.action = L6_1
L4_1.icePlanetStopCollision = L5_1
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 0
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L3_1
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.name
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = checkStillInWorld
      L2_2 = A0_2.other
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = objects
        L1_2 = L1_2.world
        L2_2 = A0_2.name
        L1_2 = L1_2[L2_2]
        L2_2 = objects
        L2_2 = L2_2.world
        L3_2 = A0_2.other
        L2_2 = L2_2[L3_2]
        L3_2 = L2_2.controllable
        if L3_2 then
          L3_2 = L2_2.isSlidingDisabled
          if not L3_2 then
            L3_2 = vLength
            L4_2 = L2_2.xVel
            L5_2 = L2_2.yVel
            L3_2 = L3_2(L4_2, L5_2)
            L4_2 = L2_2.sliding
            if not L4_2 then
              L4_2 = L3_2 * 2.5
              L2_2.startingSpeed = L4_2
            end
            L4_2 = L2_2.sliding
            if L4_2 and L3_2 < 15 then
              L2_2.isSlidingDisabled = true
            else
              L4_2 = L2_2.sliding
              if not L4_2 or 25 < L3_2 then
                L2_2.sliding = true
                L4_2 = L1_2.x
                L5_2 = L2_2.x
                L4_2 = L4_2 - L5_2
                L5_2 = L1_2.y
                L6_2 = L2_2.y
                L5_2 = L5_2 - L6_2
                L6_2 = vNormalize
                L7_2 = L4_2
                L8_2 = L5_2
                L6_2, L7_2 = L6_2(L7_2, L8_2)
                L5_2 = L7_2
                L4_2 = L6_2
                L6_2 = vNormalize
                L7_2 = L2_2.xVel
                L8_2 = L2_2.yVel
                L6_2, L7_2 = L6_2(L7_2, L8_2)
                L8_2 = vNormalize
                L9_2 = -L4_2
                L10_2 = L6_2 * 500
                L9_2 = L9_2 + L10_2
                L10_2 = -L5_2
                L11_2 = L7_2 * 500
                L10_2 = L10_2 + L11_2
                L8_2, L9_2 = L8_2(L9_2, L10_2)
                L5_2 = L9_2
                L4_2 = L8_2
                L8_2 = setVelocity
                L9_2 = A0_2.other
                L10_2 = L2_2.startingSpeed
                L10_2 = L6_2 * L10_2
                L11_2 = L2_2.startingSpeed
                L11_2 = L7_2 * L11_2
                L8_2(L9_2, L10_2, L11_2)
                L8_2 = addEventCall
                L9_2 = "slipperPlanetF"
                L10_2 = {}
                L11_2 = A0_2.name
                L10_2.name = L11_2
                L11_2 = A0_2.other
                L10_2.other = L11_2
                L11_2 = 0
                L8_2(L9_2, L10_2, L11_2)
                L8_2 = math
                L8_2 = L8_2.atan2
                L9_2 = L2_2.yVel
                L10_2 = L2_2.xVel
                L8_2 = L8_2(L9_2, L10_2)
              end
            end
          end
        end
      end
    end
  end
end
L5_1.action = L6_1
L4_1.slipperPlanetF = L5_1
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 0
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.other
  L1_2 = L1_2[L2_2]
  other = L1_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = other
  if L2_2 ~= nil and L1_2 ~= nil then
    L2_2 = blockTable
    L2_2 = L2_2.blocks
    L3_2 = other
    L3_2 = L3_2.definition
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.isDecoBubble
    if L2_2 then
      L2_2 = destroyObject
      L3_2 = A0_2.other
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end
L5_1.action = L6_1
L4_1.creditBubbleEnteredTrigger = L5_1
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 0
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = usingCameraDummy
  if L1_2 then
    L1_2 = cameraTargetObject
    if L1_2 ~= nil then
      L1_2 = cameraTargetObject
      L2_2 = {}
      L3_2 = A0_2.dest
      L3_2 = L3_2.x
      L4_2 = L1_2.x
      L3_2 = L3_2 - L4_2
      L2_2.x = L3_2
      L3_2 = A0_2.dest
      L3_2 = L3_2.y
      L4_2 = L1_2.y
      L3_2 = L3_2 - L4_2
      L2_2.y = L3_2
      L3_2 = vLength
      L4_2 = L1_2.xVel
      L5_2 = L1_2.yVel
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = vLength
      L5_2 = L2_2.x
      L6_2 = L2_2.y
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = L3_2 * 0.1
      if L4_2 > L5_2 then
        L5_2 = vNormalize
        L6_2 = L2_2.x
        L7_2 = L2_2.y
        L5_2, L6_2 = L5_2(L6_2, L7_2)
        L2_2.y = L6_2
        L2_2.x = L5_2
        L5_2 = cameraTargetObject
        L6_2 = cameraTargetObject
        L6_2 = L6_2.x
        L7_2 = L1_2.xVel
        L8_2 = A0_2.dt
        L7_2 = L7_2 * L8_2
        L6_2 = L6_2 + L7_2
        L5_2.x = L6_2
        L5_2 = cameraTargetObject
        L6_2 = cameraTargetObject
        L6_2 = L6_2.y
        L7_2 = L1_2.yVel
        L8_2 = A0_2.dt
        L7_2 = L7_2 * L8_2
        L6_2 = L6_2 + L7_2
        L5_2.y = L6_2
        L5_2 = addEventCall
        L6_2 = "moveDummyObjectToDestination"
        L7_2 = {}
        L8_2 = A0_2.dest
        L7_2.dest = L8_2
        L8_2 = 0
        L5_2(L6_2, L7_2, L8_2)
      else
        L5_2 = setCameraTargetObject
        L6_2 = nil
        L5_2(L6_2)
        L5_2 = false
        usingCameraDummy = L5_2
      end
    end
  end
end
L5_1.action = L6_1
L4_1.moveDummyObjectToDestination = L5_1
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 0
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    A0_2.pathIdx = 1
    L2_2 = addEvent
    A0_2.path = L2_2
  end
end
L5_1.action = L6_1
L4_1.startFollowPath = L5_1
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 0
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = {}
    L4_2 = "BOSS_1_DUMMY_OBJECT_1_1"
    L5_2 = "BOSS_1_DUMMY_OBJECT_1_2"
    L6_2 = "BOSS_1_DUMMY_OBJECT_1_3"
    L7_2 = "BOSS_1_DUMMY_OBJECT_1_4"
    L8_2 = "BOSS_1_DUMMY_OBJECT_1_5"
    L9_2 = "BOSS_1_DUMMY_OBJECT_1_6"
    L10_2 = "BOSS_1_DUMMY_OBJECT_1_7"
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    L3_2[5] = L8_2
    L3_2[6] = L9_2
    L3_2[7] = L10_2
    A0_2.path = L3_2
    L1_2.pathIdx = 1
    L1_2.followSpeed = 50
    L3_2 = addEventCall
    L4_2 = "followPath"
    L5_2 = A0_2
    L6_2 = 0
    L3_2(L4_2, L5_2, L6_2)
  end
end
L5_1.action = L6_1
L4_1.startFollowPath = L5_1
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 0
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = objects
    L3_2 = L3_2.world
    L4_2 = A0_2.path
    L5_2 = L1_2.pathIdx
    L4_2 = L4_2[L5_2]
    L3_2 = L3_2[L4_2]
    if L3_2 ~= nil then
      L4_2 = L3_2.x
      L5_2 = L1_2.x
      L4_2 = L4_2 - L5_2
      L5_2 = L3_2.y
      L6_2 = L1_2.y
      L5_2 = L5_2 - L6_2
      L6_2 = vLength
      L7_2 = L4_2
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      if 10 < L6_2 then
        L6_2 = vNormalize
        L7_2 = L4_2
        L8_2 = L5_2
        L6_2, L7_2 = L6_2(L7_2, L8_2)
        L5_2 = L7_2
        L4_2 = L6_2
        L6_2 = setVelocity
        L7_2 = A0_2.name
        L8_2 = L1_2.followSpeed
        L8_2 = L4_2 * L8_2
        L9_2 = L1_2.followSpeed
        L9_2 = L5_2 * L9_2
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = setAngularVelocity
        L7_2 = A0_2.name
        L8_2 = 0
        L6_2(L7_2, L8_2)
      else
        L6_2 = L1_2.pathIdx
        L6_2 = L6_2 + 1
        L1_2.pathIdx = L6_2
        L6_2 = L1_2.pathIdx
        L7_2 = A0_2.path
        L7_2 = #L7_2
        if L6_2 > L7_2 then
          L1_2.pathIdx = 1
        end
      end
    end
    L4_2 = addEventCall
    L5_2 = "followPath"
    L6_2 = A0_2
    L7_2 = 0.1
    L4_2(L5_2, L6_2, L7_2)
  end
end
L5_1.action = L6_1
L4_1.followPath = L5_1
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 0
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = A0_2.increment
    if L2_2 == nil then
      L2_2 = blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.scaleTweenTime
      if L2_2 == nil then
        A0_2.time = 0.25
        A0_2.increment = 7.2
        A0_2.scale = 0
      else
        L2_2 = blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.scaleTweenTime
        A0_2.time = L2_2
        L2_2 = blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.scaleTweenIncrement
        A0_2.increment = L2_2
        A0_2.scale = 0
      end
    end
    L2_2 = A0_2.time
    if 0 < L2_2 then
      L2_2 = A0_2.scale
      L3_2 = A0_2.dt
      L4_2 = A0_2.increment
      L3_2 = L3_2 * L4_2
      L2_2 = L2_2 + L3_2
      A0_2.scale = L2_2
      L2_2 = setBlockScale
      L3_2 = A0_2.name
      L4_2 = blockTable
      L4_2 = L4_2.blocks
      L5_2 = L1_2.definition
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.scale
      L5_2 = A0_2.scale
      L4_2 = L4_2 + L5_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.time
      L3_2 = A0_2.dt
      L2_2 = L2_2 - L3_2
      A0_2.time = L2_2
      L2_2 = addEventCall
      L3_2 = "tweenScale"
      L4_2 = A0_2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L5_1.action = L6_1
L4_1.tweenScale = L5_1
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 0
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = A0_2.increment
    if L2_2 == nil then
      L2_2 = blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.rotationTweenTime
      if L2_2 == nil then
        A0_2.time = 0.25
        A0_2.increment = 7.2
        L2_2 = L1_2.angle
        A0_2.angle = L2_2
      else
        L2_2 = blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.rotationTweenTime
        A0_2.time = L2_2
        L2_2 = blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.rotationTweenIncrement
        A0_2.increment = L2_2
        L2_2 = L1_2.angle
        A0_2.angle = L2_2
      end
    end
    L2_2 = A0_2.time
    if 0 < L2_2 then
      L2_2 = A0_2.angle
      L3_2 = A0_2.dt
      L4_2 = A0_2.increment
      L3_2 = L3_2 * L4_2
      L2_2 = L2_2 + L3_2
      A0_2.angle = L2_2
      L2_2 = setRotation
      L3_2 = A0_2.name
      L4_2 = A0_2.angle
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.time
      L3_2 = A0_2.dt
      L2_2 = L2_2 - L3_2
      A0_2.time = L2_2
      L2_2 = addEventCall
      L3_2 = "tweenRotation"
      L4_2 = A0_2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L5_1.action = L6_1
L4_1.tweenRotation = L5_1
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 0
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = A0_2.xIncrement
    if L2_2 == nil then
      L2_2 = blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.positionTweenTime
      if L2_2 == nil then
        A0_2.time = 0.25
        A0_2.xIncrement = 7.2
        A0_2.yIncrement = 7.2
        L2_2 = L1_2.x
        A0_2.x = L2_2
        L2_2 = L1_2.y
        A0_2.y = L2_2
      else
        L2_2 = blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.positionTweenTime
        A0_2.time = L2_2
        L2_2 = blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.tweenXIncrement
        A0_2.xIncrement = L2_2
        L2_2 = blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.tweenYIncrement
        A0_2.yIncrement = L2_2
        L2_2 = L1_2.x
        A0_2.x = L2_2
        L2_2 = L1_2.y
        A0_2.y = L2_2
        L2_2 = L1_2.x
        A0_2.startingX = L2_2
        L2_2 = L1_2.y
        A0_2.startingY = L2_2
      end
    end
    L2_2 = A0_2.time
    if 0 < L2_2 then
      L2_2 = A0_2.x
      L3_2 = A0_2.dt
      L4_2 = A0_2.xIncrement
      L3_2 = L3_2 * L4_2
      L2_2 = L2_2 + L3_2
      A0_2.x = L2_2
      L2_2 = A0_2.y
      L3_2 = A0_2.dt
      L4_2 = A0_2.yIncrement
      L3_2 = L3_2 * L4_2
      L2_2 = L2_2 + L3_2
      A0_2.y = L2_2
      L2_2 = setPosition
      L3_2 = A0_2.name
      L4_2 = A0_2.x
      L5_2 = A0_2.y
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2.time
      L3_2 = A0_2.dt
      L2_2 = L2_2 - L3_2
      A0_2.time = L2_2
      L2_2 = addEventCall
      L3_2 = "tweenPosition"
      L4_2 = A0_2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L5_1.action = L6_1
L4_1.tweenPosition = L5_1
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 0
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = A0_2.eventList
    if L2_2 ~= nil then
      L2_2 = pairs
      L3_2 = A0_2.eventList
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = L6_2.params
        L8_2 = A0_2.name
        L7_2.name = L8_2
        L7_2 = addEventCall
        L8_2 = L6_2.name
        L9_2 = L6_2.params
        L10_2 = L6_2.timer
        L7_2(L8_2, L9_2, L10_2)
      end
    else
      L2_2 = blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2.eventList
      if L3_2 ~= nil then
        L3_2 = pairs
        L4_2 = L2_2.eventList
        L3_2, L4_2, L5_2 = L3_2(L4_2)
        for L6_2, L7_2 in L3_2, L4_2, L5_2 do
          L8_2 = L7_2.params
          L9_2 = A0_2.name
          L8_2.name = L9_2
          L8_2 = addEventCall
          L9_2 = L7_2.name
          L10_2 = L7_2.params
          L11_2 = L7_2.timer
          L8_2(L9_2, L10_2, L11_2)
        end
      end
    end
  end
end
L5_1.action = L6_1
L4_1.fireMultipleEvents = L5_1
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 0
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = objects
  L1_2 = L1_2.world
  L1_2 = L1_2.IceBird_2
  L2_2 = {}
  L2_2.xIncrement = 196
  L2_2.yIncrement = 0
  L2_2.time = 0.5
  L2_2.name = "IceBird_2"
  L3_2 = L1_2.x
  L2_2.x = L3_2
  L3_2 = L1_2.y
  L2_2.y = L3_2
  L3_2 = addEventCall
  L4_2 = "tweenPosition"
  L5_2 = L2_2
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
end
L5_1.action = L6_1
L4_1.FreeIceBird = L5_1
L4_1 = actions
L5_1 = {}
L6_1 = {}
L6_1.timer = 1
L5_1.params = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = handleLevelMusic
  L1_2()
end
L5_1.action = L6_1
L4_1.handleMusic = L5_1
L4_1 = {}
L5_1 = "BOSS_1_DUMMY_OBJECT_1_1"
L6_1 = "BOSS_1_DUMMY_OBJECT_1_2"
L7_1 = "BOSS_1_DUMMY_OBJECT_1_3"
L8_1 = "BOSS_1_DUMMY_OBJECT_1_4"
L9_1 = "BOSS_1_DUMMY_OBJECT_1_5"
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L4_1[4] = L8_1
L4_1[5] = L9_1
L5_1 = 0
L6_1 = 0
L7_1 = {}
L8_1 = "BOSS_1_DUMMY_OBJECT_1_6"
L9_1 = "BOSS_1_DUMMY_OBJECT_1_7"
L10_1 = "BOSS_1_DUMMY_OBJECT_1_8"
L7_1[1] = L8_1
L7_1[2] = L9_1
L7_1[3] = L10_1
L8_1 = 24
L9_1 = actions
L10_1 = {}
L11_1 = {}
L11_1.timer = 0
L10_1.params = L11_1
function L11_1(A0_2)
  local L1_2
  L1_2 = L6_1
  L1_2 = L1_2 - 1
  L6_1 = L1_2
end
L10_1.action = L11_1
L9_1.mainMenuObjDestroyed = L10_1
L9_1 = actions
L10_1 = {}
L11_1 = {}
L11_1.timer = 25
L10_1.params = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = isEpisodeCompleted
  L2_2 = "theme2"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = menuUfo
    if L1_2 == nil then
      L1_2 = requireFile
      L2_2 = "menu/MenuUFO.lua"
      L1_2(L2_2)
      L1_2 = ui
      L1_2 = L1_2.MenuUFO
      L2_2 = L1_2
      L1_2 = L1_2.new
      L3_2 = "menuUFO"
      L1_2 = L1_2(L2_2, L3_2)
      menuUfo = L1_2
      L1_2 = menuUfo
      L1_2.floorCoordinates = false
      L1_2 = GameSystem
      L1_2 = L1_2.menuManager
      L3_2 = L1_2
      L2_2 = L1_2.getRoot
      L2_2 = L2_2(L3_2)
      if L2_2 ~= nil then
        L3_2 = L1_2
        L2_2 = L1_2.getRoot
        L2_2 = L2_2(L3_2)
        L3_2 = L2_2
        L2_2 = L2_2.addChild
        L4_2 = menuUfo
        L2_2(L3_2, L4_2)
        L2_2 = menuUfo
        L3_2 = L2_2
        L2_2 = L2_2.addUFO
        L2_2(L3_2)
      end
    else
      L1_2 = menuUfo
      L2_2 = L1_2
      L1_2 = L1_2.addUFO
      L1_2(L2_2)
    end
    L1_2 = addEventCall
    L2_2 = "mainMenuSpawnSpaceShip"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L10_1.action = L11_1
L9_1.mainMenuSpawnSpaceShip = L10_1
L9_1 = actions
L10_1 = {}
L11_1 = {}
L11_1.timer = -1
L10_1.params = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = L1_2.timer
    if L2_2 < 6.5 then
      L2_2 = L1_2.x
      L3_2 = A0_2.dt
      L3_2 = L3_2 * 30
      L2_2 = L2_2 + L3_2
      L1_2.x = L2_2
      L2_2 = L1_2.startingY
      L3_2 = math
      L3_2 = L3_2.sin
      L4_2 = L1_2.timer
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2 * 12
      L2_2 = L2_2 + L3_2
      L1_2.y = L2_2
      L2_2 = setPosition
      L3_2 = A0_2.name
      L4_2 = L1_2.x
      L5_2 = L1_2.y
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = L1_2.timer
      L3_2 = A0_2.dt
      L2_2 = L2_2 + L3_2
      L1_2.timer = L2_2
      L2_2 = addEventCall
      L3_2 = "mainMenuSpaceShipMoveRight"
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = destroyObject
      L3_2 = A0_2.name
      L2_2(L3_2)
    end
  end
end
L10_1.action = L11_1
L9_1.mainMenuSpaceShipMoveRight = L10_1
L9_1 = 1
L10_1 = actions
L11_1 = {}
L12_1 = {}
L12_1.timer = 0.75
L11_1.params = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L1_2[L2_2] = "MenuRedBird"
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isTutorialShown
  L4_2 = "SmallBlueBird"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L1_2[L2_2] = "MenuBlueBird"
  end
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isTutorialShown
  L4_2 = "BlackBird"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L1_2[L2_2] = "MenuBlackBird"
  end
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isTutorialShown
  L4_2 = "LaserBird"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L1_2[L2_2] = "MenuLaserBird"
  end
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isTutorialShown
  L4_2 = "IceBird"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L1_2[L2_2] = "MenuIceBird"
  end
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isTutorialShown
  L4_2 = "RedBigBird"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L1_2[L2_2] = "MenuRedBigBird"
  end
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isTutorialShown
  L4_2 = "GlobeBird"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L1_2[L2_2] = "MenuGlobeBird"
  end
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isTutorialShown
  L4_2 = "BirdAntennaEgg"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L1_2[L2_2] = "MenuBirdAntennaEgg"
  end
  L2_2 = #L1_2
  if L2_2 < 1 then
    L2_2 = 1
  end
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 1
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 1
  L6_2 = L7_1
  L6_2 = #L6_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = objects
  L5_2 = L5_2.world
  L6_2 = L7_1
  L6_2 = L6_2[L4_2]
  L5_2 = L5_2[L6_2]
  if not L5_2 then
    return
  end
  L5_2 = createObject
  L6_2 = blockTable
  L7_2 = L1_2[L3_2]
  L8_2 = "MENU_BIRD_"
  L9_2 = L9_1
  L8_2 = L8_2 .. L9_2
  L9_2 = objects
  L9_2 = L9_2.world
  L10_2 = L7_1
  L10_2 = L10_2[L4_2]
  L9_2 = L9_2[L10_2]
  L9_2 = L9_2.x
  L10_2 = objects
  L10_2 = L10_2.world
  L11_2 = L7_1
  L11_2 = L11_2[L4_2]
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.y
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L1_1
  L7_2 = objects
  L7_2 = L7_2.world
  L7_2 = L7_2[L5_2]
  L6_2[L5_2] = L7_2
  L6_2 = L9_1
  L6_2 = L6_2 + 1
  L9_1 = L6_2
  L6_2 = objects
  L6_2 = L6_2.world
  L6_2 = L6_2[L5_2]
  L6_2.damageDone = 0
  L7_2 = math
  L7_2 = L7_2.random
  L8_2 = 10
  L9_2 = 30
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = L7_2 / 10
  L6_2.animTimer = L7_2
  L7_2 = math
  L7_2 = L7_2.random
  L8_2 = 10
  L9_2 = 30
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = L7_2 / 10
  L6_2.jumpTimer = L7_2
  L7_2 = setVelocity
  L8_2 = L5_2
  L9_2 = 1000
  L10_2 = 0
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = setAngularVelocity
  L8_2 = L5_2
  L9_2 = 0
  L7_2(L8_2, L9_2)
  L7_2 = addEventCall
  L8_2 = "mainMenuShotNextBird"
  L9_2 = A0_2
  L10_2 = 3.5
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = math
  L7_2 = L7_2.random
  L7_2 = L7_2()
  L7_2 = L7_2 * 500
  L8_2 = math
  L8_2 = L8_2.random
  L8_2 = L8_2()
  L8_2 = L8_2 * 500
  L7_2 = L7_2 - L8_2
  L6_2.yVel = L7_2
  L7_2 = addEventCall
  L8_2 = "menuBirdController"
  L9_2 = {}
  L9_2.name = L5_2
  L10_2 = 0.1
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = addEventCall
  L8_2 = "menuBirdSpecialty"
  L9_2 = {}
  L9_2.name = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = addEventCall
  L8_2 = "birdTailParticlesUpdate"
  L9_2 = {}
  L9_2.name = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = addEventCall
  L8_2 = "destroyMainMenuBird"
  L9_2 = {}
  L9_2.name = L5_2
  L10_2 = 5
  L7_2(L8_2, L9_2, L10_2)
end
L11_1.action = L12_1
L10_1.mainMenuShotNextBird = L11_1
L10_1 = actions
L11_1 = {}
L12_1 = {}
L12_1.timer = 0
L11_1.params = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = screenToPhysicsTransform
    L3_2 = screenWidth
    L4_2 = screenHeight
    L4_2 = -L4_2
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    L4_2 = screenToPhysicsTransform
    L5_2 = screenWidth
    L5_2 = -L5_2
    L6_2 = screenHeight
    L6_2 = L6_2 * 0.5
    L4_2, L5_2 = L4_2(L5_2, L6_2)
    L6_2 = A0_2.tries
    if L6_2 == nil then
      A0_2.tries = 1
    end
    L6_2 = A0_2.tries
    if L6_2 < 12 then
      L6_2 = L1_2.x
      if L2_2 > L6_2 then
        L6_2 = L1_2.x
        if L4_2 < L6_2 then
          L6_2 = L1_2.y
          if L3_2 < L6_2 then
            L6_2 = L1_2.y
            if L5_2 > L6_2 then
              L6_2 = A0_2.tries
              L6_2 = L6_2 + 1
              A0_2.tries = L6_2
              L6_2 = addEventCall
              L7_2 = "destroyMainMenuBird"
              L8_2 = A0_2
              L9_2 = 0.25
              L6_2(L7_2, L8_2, L9_2)
          end
        end
      end
    end
    else
      L6_2 = L1_1
      L7_2 = A0_2.name
      L6_2[L7_2] = nil
      L6_2 = destroyObject
      L7_2 = A0_2.name
      L6_2(L7_2)
    end
  end
end
L11_1.action = L12_1
L10_1.destroyMainMenuBird = L11_1
L10_1 = actions
L11_1 = {}
L12_1 = {}
L12_1.timer = 1.5
L11_1.params = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.specialty
    if L2_2 == "SOUND" then
      L2_2 = res
      L2_2 = L2_2.playAudio
      L3_2 = getAudioName
      L4_2 = blockTable
      L4_2 = L4_2.blocks
      L5_2 = L1_2.definition
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.sounds
      L4_2 = L4_2.special
      L3_2 = L3_2(L4_2)
      L4_2 = 1
      L5_2 = false
      L6_2 = 4
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = addBirdSpecialParticles
      L3_2 = L1_2
      L2_2(L3_2)
    else
      L2_2 = blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.specialty
      if L2_2 == "BOMB" then
        L2_2 = pairs
        L3_2 = L0_1
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          if L6_2 ~= nil then
            L7_2 = vLength
            L8_2 = L6_2.x
            L9_2 = L1_2.x
            L8_2 = L8_2 - L9_2
            L9_2 = L6_2.y
            L10_2 = L1_2.y
            L9_2 = L9_2 - L10_2
            L7_2 = L7_2(L8_2, L9_2)
            if L7_2 < 12.5 then
              L8_2 = nil
              L9_2 = blockTable
              L9_2 = L9_2.blocks
              L10_2 = L1_2.definition
              L9_2 = L9_2[L10_2]
              L9_2 = L9_2.sounds
              if L9_2 ~= nil then
                L9_2 = getAudioName
                L10_2 = blockTable
                L10_2 = L10_2.blocks
                L11_2 = L1_2.definition
                L10_2 = L10_2[L11_2]
                L10_2 = L10_2.sounds
                L10_2 = L10_2.special
                L9_2 = L9_2(L10_2)
                L8_2 = L9_2
              end
              L9_2 = playAudio
              L10_2 = getAudioName
              L11_2 = blockTable
              L11_2 = L11_2.blocks
              L12_2 = L1_2.definition
              L11_2 = L11_2[L12_2]
              L11_2 = L11_2.sounds
              L11_2 = L11_2.special
              L10_2 = L10_2(L11_2)
              L11_2 = 1
              L12_2 = false
              L13_2 = 4
              L9_2(L10_2, L11_2, L12_2, L13_2)
              L9_2 = addBirdSpecialParticles
              L10_2 = L1_2
              L9_2(L10_2)
              L9_2 = makeExplosion
              L10_2 = L1_2
              L11_2 = getObjectDefinition
              L12_2 = L1_2.name
              L11_2 = L11_2(L12_2)
              L12_2 = L8_2
              L9_2(L10_2, L11_2, L12_2)
              L9_2 = L1_1
              L10_2 = L1_2.name
              L9_2[L10_2] = nil
              L9_2 = destroyObject
              L10_2 = L1_2.name
              L9_2(L10_2)
              return
            end
          end
        end
        L2_2 = addEventCall
        L3_2 = "menuBirdSpecialty"
        L4_2 = A0_2
        L5_2 = 0.1
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L11_1.action = L12_1
L10_1.menuBirdSpecialty = L11_1
L10_1 = actions
L11_1 = {}
L12_1 = {}
L12_1.timer = 0
L11_1.params = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L1_2.boostAim = nil
  end
end
L11_1.action = L12_1
L10_1.removeBoostAim = L11_1
L10_1 = actions
L11_1 = {}
L12_1 = {}
L12_1.timer = 0
L11_1.params = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = setVelocity
    L3_2 = A0_2.name
    L4_2 = 1000
    L5_2 = L1_2.yVel
    L2_2(L3_2, L4_2, L5_2)
  end
end
L11_1.action = L12_1
L10_1.menuBirdController = L11_1
L10_1 = actions
function L11_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_1 = L0_2
  L0_2 = {}
  L1_1 = L0_2
  L0_2 = 0
  L6_1 = L0_2
end
L10_1.initializeMainMenu = L11_1
L10_1 = nil
L11_1 = {}
L12_1 = "MAIN_MENU_BUBBLE_DECO_OBJ_1"
L13_1 = "MAIN_MENU_BUBBLE_DECO_OBJ_2"
L11_1[1] = L12_1
L11_1[2] = L13_1
L12_1 = {}
L13_1 = "BLOCK_ASTEROID_ICE_1"
L12_1[1] = L13_1
L13_1 = {}
L14_1 = "BLOCK_TNT_3X3"
L13_1[1] = L14_1
L14_1 = {}
L15_1 = {}
L15_1.episodeIndex = 1
L16_1 = {}
L17_1 = "MAIN_MENU_BUBBLE_THREE_STARS_THEME_1"
L16_1[1] = L17_1
L15_1.starObjects = L16_1
L16_1 = {}
L17_1 = "MAIN_MENU_BUBBLE_FEATHERS_THEME_1"
L16_1[1] = L17_1
L15_1.featherObjects = L16_1
L16_1 = {}
L16_1.episodeIndex = 2
L17_1 = {}
L18_1 = "MAIN_MENU_BUBBLE_THREE_STARS_THEME_2"
L17_1[1] = L18_1
L16_1.starObjects = L17_1
L17_1 = {}
L18_1 = "MAIN_MENU_BUBBLE_FEATHERS_THEME_2"
L17_1[1] = L18_1
L16_1.featherObjects = L17_1
L17_1 = {}
L17_1.episodeIndex = 3
L18_1 = {}
L19_1 = "MAIN_MENU_BUBBLE_THREE_STARS_THEME_3"
L18_1[1] = L19_1
L17_1.starObjects = L18_1
L18_1 = {}
L19_1 = "MAIN_MENU_BUBBLE_FEATHERS_THEME_3"
L18_1[1] = L19_1
L17_1.featherObjects = L18_1
L18_1 = {}
L18_1.episodeIndex = 4
L19_1 = {}
L20_1 = "MAIN_MENU_BUBBLE_THREE_STARS_THEME_4"
L19_1[1] = L20_1
L18_1.starObjects = L19_1
L19_1 = {}
L20_1 = "MAIN_MENU_BUBBLE_FEATHERS_THEME_4"
L19_1[1] = L20_1
L18_1.featherObjects = L19_1
L19_1 = {}
L19_1.episodeIndex = 5
L20_1 = {}
L21_1 = "MAIN_MENU_BUBBLE_THREE_STARS_THEME_5"
L20_1[1] = L21_1
L19_1.starObjects = L20_1
L20_1 = {}
L21_1 = "MAIN_MENU_BUBBLE_FEATHERS_THEME_5"
L20_1[1] = L21_1
L19_1.featherObjects = L20_1
L20_1 = {}
L20_1.episodeIndex = 6
L21_1 = {}
L22_1 = "MAIN_MENU_BUBBLE_THREE_STARS_THEME_6"
L21_1[1] = L22_1
L20_1.starObjects = L21_1
L21_1 = {}
L22_1 = "MAIN_MENU_BUBBLE_FEATHERS_THEME_6"
L21_1[1] = L22_1
L20_1.featherObjects = L21_1
L21_1 = {}
L21_1.episodeIndex = 7
L22_1 = {}
L23_1 = "MAIN_MENU_BUBBLE_THREE_STARS_THEME_7"
L22_1[1] = L23_1
L21_1.starObjects = L22_1
L22_1 = {}
L23_1 = "MAIN_MENU_BUBBLE_FEATHERS_THEME_7"
L22_1[1] = L23_1
L21_1.featherObjects = L22_1
L22_1 = {}
L22_1.episodeIndex = 8
L23_1 = {}
L24_1 = "MAIN_MENU_BUBBLE_THREE_STARS_THEME_8_1"
L23_1[1] = L24_1
L22_1.starObjects = L23_1
L23_1 = {}
L24_1 = "MAIN_MENU_BUBBLE_FEATHERS_THEME_8_1"
L23_1[1] = L24_1
L22_1.featherObjects = L23_1
L23_1 = {}
L23_1.episodeIndex = 9
L24_1 = {}
L25_1 = "MAIN_MENU_BUBBLE_THREE_STARS_THEME_8"
L24_1[1] = L25_1
L23_1.starObjects = L24_1
L24_1 = {}
L25_1 = "MAIN_MENU_BUBBLE_FEATHERS_THEME_8"
L24_1[1] = L25_1
L23_1.featherObjects = L24_1
L24_1 = {}
L24_1.episodeIndex = 10
L25_1 = {}
L26_1 = "MAIN_MENU_BUBBLE_THREE_STARS_THEME_9"
L25_1[1] = L26_1
L24_1.starObjects = L25_1
L25_1 = {}
L26_1 = "MAIN_MENU_BUBBLE_FEATHERS_THEME_9"
L25_1[1] = L26_1
L24_1.featherObjects = L25_1
L25_1 = {}
L25_1.episodeIndex = 12
L26_1 = {}
L27_1 = "MAIN_MENU_BUBBLE_THREE_STARS_DANGER_1"
L26_1[1] = L27_1
L25_1.starObjects = L26_1
L26_1 = {}
L27_1 = "MAIN_MENU_BUBBLE_FEATHERS_DANGER_1"
L26_1[1] = L27_1
L25_1.featherObjects = L26_1
L14_1[1] = L15_1
L14_1[2] = L16_1
L14_1[3] = L17_1
L14_1[4] = L18_1
L14_1[5] = L19_1
L14_1[6] = L20_1
L14_1[7] = L21_1
L14_1[8] = L22_1
L14_1[9] = L23_1
L14_1[10] = L24_1
L14_1[11] = L25_1
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = {}
  L1_2 = "PIG_LARGE_BUBBLE"
  L2_2 = "PIG_MOUSTACHE_BUBBLE"
  L3_2 = "PIG_HELMET_BUBBLE"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L10_1 = L0_2
  L0_2 = isEpisodeCompleted
  L1_2 = "theme1"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = pairs
    L1_2 = L11_1
    L0_2, L1_2, L2_2 = L0_2(L1_2)
    for L3_2, L4_2 in L0_2, L1_2, L2_2 do
      L5_2 = L10_1
      L6_2 = L10_1
      L6_2 = #L6_2
      L6_2 = L6_2 + 1
      L5_2[L6_2] = L4_2
    end
  end
  L0_2 = isEpisodeCompleted
  L1_2 = "theme2"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = pairs
    L1_2 = L12_1
    L0_2, L1_2, L2_2 = L0_2(L1_2)
    for L3_2, L4_2 in L0_2, L1_2, L2_2 do
      L5_2 = L10_1
      L6_2 = L10_1
      L6_2 = #L6_2
      L6_2 = L6_2 + 1
      L5_2[L6_2] = L4_2
    end
  end
  L0_2 = isEpisodeCompleted
  L1_2 = "dangerZone"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = pairs
    L1_2 = L13_1
    L0_2, L1_2, L2_2 = L0_2(L1_2)
    for L3_2, L4_2 in L0_2, L1_2, L2_2 do
      L5_2 = L10_1
      L6_2 = L10_1
      L6_2 = #L6_2
      L6_2 = L6_2 + 1
      L5_2[L6_2] = L4_2
    end
  end
  L0_2 = pairs
  L1_2 = L14_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = calculateEpisodeScoreAndStars
    L6_2 = L4_2.episodeIndex
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
    if L6_2 == L7_2 then
      L10_2 = pairs
      L11_2 = L4_2.starObjects
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = L10_1
        L16_2 = L10_1
        L16_2 = #L16_2
        L16_2 = L16_2 + 1
        L15_2[L16_2] = L14_2
      end
    end
    if L8_2 == L9_2 then
      L10_2 = pairs
      L11_2 = L4_2.featherObjects
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = L10_1
        L16_2 = L10_1
        L16_2 = #L16_2
        L16_2 = L16_2 + 1
        L15_2[L16_2] = L14_2
      end
    end
  end
end
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0.5
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L10_1
  if L1_2 == nil then
    L1_2 = L15_1
    L1_2()
  end
  L1_2 = L6_1
  L2_2 = L8_1
  if L1_2 < L2_2 then
    L1_2 = math
    L1_2 = L1_2.random
    L2_2 = 1
    L3_2 = L10_1
    L3_2 = #L3_2
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = 1
    L4_2 = L4_1
    L4_2 = #L4_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L6_1
    L3_2 = L3_2 + 1
    L6_1 = L3_2
    L3_2 = math
    L3_2 = L3_2.random
    L3_2 = L3_2()
    L3_2 = L3_2 * 5
    L4_2 = math
    L4_2 = L4_2.random
    L4_2 = L4_2()
    L4_2 = L4_2 * 5
    L5_2 = objects
    L5_2 = L5_2.world
    L6_2 = L4_1
    L6_2 = L6_2[L2_2]
    L5_2 = L5_2[L6_2]
    if L5_2 ~= nil then
      L6_2 = createObject
      L7_2 = blockTable
      L8_2 = L10_1
      L8_2 = L8_2[L1_2]
      L9_2 = L10_1
      L9_2 = L9_2[L1_2]
      L10_2 = L5_1
      L9_2 = L9_2 .. L10_2
      L10_2 = L5_2.x
      L10_2 = L10_2 + L3_2
      L11_2 = L5_2.y
      L11_2 = L11_2 + L4_2
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L7_2 = L5_1
      L7_2 = L7_2 + 1
      L5_1 = L7_2
      L7_2 = objects
      L7_2 = L7_2.destroyableByTap
      L8_2 = objects
      L8_2 = L8_2.destroyableByTap
      L8_2 = #L8_2
      L8_2 = L8_2 + 1
      L7_2[L8_2] = L6_2
      L7_2 = objects
      L7_2 = L7_2.world
      L7_2 = L7_2[L6_2]
      L7_2.onDestroyed = "mainMenuObjDestroyed"
      L7_2 = L0_1
      L8_2 = objects
      L8_2 = L8_2.world
      L8_2 = L8_2[L6_2]
      L7_2[L6_2] = L8_2
    end
  end
  L1_2 = addEventCall
  L2_2 = "mainMenuSpawnNextObject"
  L3_2 = A0_2
  L4_2 = 3.75
  L1_2(L2_2, L3_2, L4_2)
end
L17_1.action = L18_1
L16_1.mainMenuSpawnNextObject = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0.5
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = objects
  L2_2 = L2_2.world
  L3_2 = A0_2.other
  L2_2 = L2_2[L3_2]
  L3_2 = getLevelMetadata
  L4_2 = levelName
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.objectsDestroyableByTap
  if L3_2 ~= true and L1_2 ~= nil and L2_2 ~= nil then
    L3_2 = L2_2.sensorType
    if L3_2 == "gravitation" then
      L3_2 = L2_2.isWater
      if not L3_2 then
        L3_2 = L1_2.spriteUnfreeze
        if L3_2 ~= nil then
          L3_2 = L1_2.spriteUnfreeze
          L1_2.sprite = L3_2
          L3_2 = L1_2.materialUnfreeze
          L1_2.material = L3_2
          L1_2.disableAnimations = false
          L3_2 = setSprite
          L4_2 = L1_2.name
          L5_2 = L1_2.sprite
          L3_2(L4_2, L5_2)
          L1_2.timeOutsideAtmosphere = 0
          L1_2.enteredState = false
          L3_2 = setCurrentState
          L4_2 = L1_2
          L5_2 = "idleState"
          L3_2(L4_2, L5_2)
          L3_2 = addEventCall
          L4_2 = "removeIciclesFromPig"
          L5_2 = {}
          L6_2 = A0_2.name
          L5_2.name = L6_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L17_1.action = L18_1
L16_1.pigEnteredGravityArea = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0.5
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = freezingObjects
  L1_2 = L1_2.objects
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L1_2 = freezingObjects
    L1_2 = L1_2.objects
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2.timer = 0
    L1_2 = freezeObjects
    L2_2 = freezingObjects
    L2_2 = L2_2.objects
    L3_2 = 0
    L1_2(L2_2, L3_2)
  end
end
L17_1.action = L18_1
L16_1.removeIciclesFromPig = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.frozen
  if L1_2 then
    L1_2 = putParticles
    L2_2 = {}
    L3_2 = A0_2.sx
    L2_2.x = L3_2
    L3_2 = A0_2.sy
    L2_2.y = L3_2
    L2_2.particles = "lightBuff"
    L2_2.amount = 3
    L1_2(L2_2)
  else
    L1_2 = putParticles
    L2_2 = {}
    L3_2 = A0_2.sx
    L2_2.x = L3_2
    L3_2 = A0_2.sy
    L2_2.y = L3_2
    L2_2.particles = "woodenBuff"
    L2_2.amount = 3
    L1_2(L2_2)
  end
end
L17_1.action = L18_1
L16_1.addParticlesToJoint = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2.isInWakeUpAnimation
    if not L2_2 then
      L1_2.isInWakeUpAnimation = true
      L2_2 = addEventCall
      L3_2 = "wakeUpAnimationHandler"
      L4_2 = A0_2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L17_1.action = L18_1
L16_1.wakeUpObject = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2.sprite
    L4_2 = L2_2.wakeUpEyesOpenSprite
    L5_2 = L2_2.wakeUpEyesWideSprite
    L6_2 = A0_2.wasSuprised
    if L6_2 then
      L6_2 = A0_2.openEyes
      if L6_2 then
        L6_2 = A0_2.blinkCount
        if L6_2 == 1 then
          L6_2 = setSprite
          L7_2 = A0_2.name
          L8_2 = L5_2
          L6_2(L7_2, L8_2)
        else
          L6_2 = setSprite
          L7_2 = A0_2.name
          L8_2 = L4_2
          L6_2(L7_2, L8_2)
        end
        L6_2 = math
        L6_2 = L6_2.random
        L6_2 = L6_2()
        L6_2 = L6_2 * 2
        L6_2 = 2 + L6_2
        L7_2 = A0_2.fastBlink
        if L7_2 then
          L6_2 = 0.1
        end
        L7_2 = A0_2.fastBlink
        L7_2 = not L7_2
        A0_2.fastBlink = L7_2
        L7_2 = addEventCall
        L8_2 = "wakeUpAnimationHandler"
        L9_2 = A0_2
        L10_2 = L6_2
        L7_2(L8_2, L9_2, L10_2)
      else
        L6_2 = A0_2.blinkCount
        if not L6_2 then
          L6_2 = 0
        end
        L6_2 = L6_2 + 1
        A0_2.blinkCount = L6_2
        L6_2 = setSprite
        L7_2 = A0_2.name
        L8_2 = L3_2
        L6_2(L7_2, L8_2)
        L6_2 = A0_2.blinkCount
        if L6_2 < 7 then
          L6_2 = addEventCall
          L7_2 = "wakeUpAnimationHandler"
          L8_2 = A0_2
          L9_2 = 0.1
          L6_2(L7_2, L8_2, L9_2)
        else
          L1_2.isInWakeUpAnimation = false
        end
      end
      L6_2 = A0_2.openEyes
      L6_2 = not L6_2
      A0_2.openEyes = L6_2
    else
      A0_2.wasSuprised = true
      A0_2.openEyes = false
      A0_2.fastBlink = true
      L6_2 = setSprite
      L7_2 = A0_2.name
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      L6_2 = addEventCall
      L7_2 = "wakeUpAnimationHandler"
      L8_2 = A0_2
      L9_2 = 3
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L17_1.action = L18_1
L16_1.wakeUpAnimationHandler = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.blinking
    if L3_2 then
      L3_2 = setSprite
      L4_2 = A0_2.name
      L5_2 = L2_2.blinkingSprite
      L3_2(L4_2, L5_2)
      L3_2 = addEventCall
      L4_2 = "startBlinking"
      L5_2 = A0_2
      L6_2 = 0.1
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = setSprite
      L4_2 = A0_2.name
      L5_2 = L2_2.sprite
      L3_2(L4_2, L5_2)
      L3_2 = math
      L3_2 = L3_2.random
      L3_2 = L3_2()
      L3_2 = L3_2 * 6
      L3_2 = 4 + L3_2
      L4_2 = A0_2.fastBlink
      if L4_2 then
        L3_2 = 0.1
      end
      L4_2 = A0_2.fastBlink
      L4_2 = not L4_2 and L4_2
      A0_2.fastBlink = L4_2
      L4_2 = addEventCall
      L5_2 = "startBlinking"
      L6_2 = A0_2
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    end
    L3_2 = A0_2.blinking
    L3_2 = not L3_2 and L3_2
    A0_2.blinking = L3_2
  end
end
L17_1.action = L18_1
L16_1.startBlinking = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.other
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.controllable
  if L1_2 then
  else
    L1_2 = destroyObject
    L2_2 = A0_2.other
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L17_1.action = L18_1
L16_1.enterKillZone = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L1_2.destroyTimeout
    if not L3_2 then
      L3_2 = L2_2.destroyTimeout
    end
    if L3_2 then
      L4_2 = addEventCall
      L5_2 = "destroy"
      L6_2 = {}
      L7_2 = A0_2.name
      L6_2.name = L7_2
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = assert
      L5_2 = false
      L6_2 = "destroyAfterTimeout called, but no timeout set for: "
      L7_2 = L1_2.definition
      L6_2 = L6_2 .. L7_2
      L4_2(L5_2, L6_2)
    end
  end
end
L17_1.action = L18_1
L16_1.destroyAfterTimeout = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = print
  L2_2 = "startPropulsion"
  L1_2(L2_2)
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = checkStillInWorld
  L3_2 = A0_2.name
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L1_2.activePropulsion
    if not L2_2 then
      L2_2 = blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = assert
      L4_2 = L2_2.propulsionData
      L5_2 = "Block definition has action 'startPropulsion' but lacks 'propulsionData'."
      L3_2(L4_2, L5_2)
      L3_2 = L2_2.propulsionData
      L3_2 = L3_2.startStrengthThreshold
      L4_2 = L1_2.strength
      if not (L3_2 >= L4_2) then
        L3_2 = A0_2.tapped
        if not L3_2 then
          goto lbl_79
        end
      end
      L3_2 = L2_2.propulsionData
      L3_2 = L3_2.sound
      if L3_2 then
        L3_2 = playAudio
        L4_2 = getAudioName
        L5_2 = L2_2.propulsionData
        L5_2 = L5_2.sound
        L4_2 = L4_2(L5_2)
        L5_2 = 1
        L6_2 = false
        L7_2 = 4
        L3_2(L4_2, L5_2, L6_2, L7_2)
      end
      L1_2.disableAnimations = true
      L3_2 = setSprite
      L4_2 = L1_2.name
      L5_2 = L1_2.sprite
      L3_2(L4_2, L5_2)
      L3_2 = {}
      L4_2 = L2_2.propulsionData
      L4_2 = L4_2.timer
      L3_2.timer = L4_2
      L4_2 = L2_2.propulsionData
      L4_2 = L4_2.particleData
      L4_2 = L4_2.timeInterval
      L3_2.particleTimer = L4_2
      L1_2.activePropulsion = L3_2
      L3_2 = settings
      L3_2 = L3_2.root
      L3_2 = L3_2.gasTanksActivated
      if not L3_2 then
        L3_2 = 0
      end
      L4_2 = settings
      L4_2 = L4_2.root
      L5_2 = L3_2 + 1
      L4_2.gasTanksActivated = L5_2
      L4_2 = addUpdateCall
      L5_2 = "propulseBlock"
      L6_2 = {}
      L7_2 = A0_2.name
      L6_2.name = L7_2
      L7_2 = 0
      L8_2 = "propulse_"
      L9_2 = A0_2.name
      L8_2 = L8_2 .. L9_2
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
  ::lbl_79::
end
L17_1.action = L18_1
L16_1.startPropulsion = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = removeUpdateCall
    L2_2 = "propulse_"
    L3_2 = A0_2.name
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  else
    L1_2 = objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2.activePropulsion
    L3_2 = L2_2.timer
    L4_2 = A0_2.dt
    L3_2 = L3_2 - L4_2
    L2_2.timer = L3_2
    L3_2 = L2_2.timer
    if L3_2 <= 0 then
      L3_2 = removeUpdateCall
      L4_2 = "propulse_"
      L5_2 = A0_2.name
      L4_2 = L4_2 .. L5_2
      L3_2(L4_2)
      return
    end
    L3_2 = blockTable
    L3_2 = L3_2.blocks
    L4_2 = L1_2.definition
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.propulsionData
    L4_2 = getWorldPoint
    L5_2 = A0_2.name
    L6_2 = L3_2.origin
    L6_2 = L6_2.x
    L7_2 = L3_2.origin
    L7_2 = L7_2.y
    L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
    L6_2 = vec2Rotate
    L7_2 = L3_2.force
    L7_2 = L7_2.x
    L8_2 = L3_2.force
    L8_2 = L8_2.y
    L9_2 = L1_2.angle
    L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = applyForce
    L9_2 = A0_2.name
    L10_2 = L6_2
    L11_2 = L7_2
    L12_2 = L4_2
    L13_2 = L5_2
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = L3_2.particleData
    L9_2 = L2_2.particleTimer
    L10_2 = A0_2.dt
    L9_2 = L9_2 + L10_2
    L2_2.particleTimer = L9_2
    L9_2 = L2_2.particleTimer
    L10_2 = L8_2.timeInterval
    if L9_2 >= L10_2 then
      L9_2 = L2_2.particleTimer
      L10_2 = L8_2.timeInterval
      L9_2 = L9_2 - L10_2
      L2_2.particleTimer = L9_2
      L9_2 = putParticles
      L10_2 = {}
      L11_2 = L8_2.amount
      L10_2.amount = L11_2
      L10_2.x = L4_2
      L10_2.y = L5_2
      L11_2 = L8_2.size
      L10_2.w = L11_2
      L11_2 = L8_2.size
      L10_2.h = L11_2
      L11_2 = L8_2.particle
      L10_2.particles = L11_2
      L11_2 = L1_2.angle
      L12_2 = L8_2.angle
      L11_2 = L11_2 + L12_2
      L10_2.angle = L11_2
      L9_2(L10_2)
    end
  end
end
L17_1.action = L18_1
L16_1.propulseBlock = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = print
  L2_2 = "-- spawnKillZone --"
  L1_2(L2_2)
  L1_2 = createObject
  L2_2 = blockTable
  L3_2 = "CIRCLE_KILL_SENSOR"
  L4_2 = A0_2.obj
  L4_2 = L4_2.name
  L5_2 = "_killSensor"
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2.obj
  L5_2 = L5_2.x
  L6_2 = A0_2.obj
  L6_2 = L6_2.y
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = gamelua
  L2_2 = L2_2.setRadius
  L3_2 = L1_2
  L4_2 = 12.3
  L2_2(L3_2, L4_2)
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[L1_2]
  L2_2.radius = 12.3
end
L17_1.action = L18_1
L16_1.spawnKillZone = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = print
  L2_2 = "spawnKillZoneAndAnimate"
  L1_2(L2_2)
  L1_2 = createObject
  L2_2 = blockTable
  L3_2 = "CIRCLE_KILL_SENSOR"
  L4_2 = A0_2.obj
  L4_2 = L4_2.name
  L5_2 = "_killSensor"
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2.obj
  L5_2 = L5_2.x
  L6_2 = A0_2.obj
  L6_2 = L6_2.y
  L7_2 = A0_2.obj
  L7_2 = L7_2.radius
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = addUpdateCall
  L3_2 = "updateRadius"
  L4_2 = {}
  L5_2 = objects
  L5_2 = L5_2.world
  L5_2 = L5_2[L1_2]
  L4_2.obj = L5_2
  L5_2 = nil
  L6_2 = "updateRadius_"
  L7_2 = L1_2
  L6_2 = L6_2 .. L7_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L17_1.action = L18_1
L16_1.spawnKillZoneAndAnimate = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2.obj
  L2_2 = L1_2.name
  L3_2 = blockTable
  L3_2 = L3_2.blocks
  L4_2 = L1_2.definition
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2.endRadius
  L5_2 = L3_2.radiusVel
  L6_2 = L1_2.radius
  L7_2 = A0_2.dt
  L7_2 = L5_2 * L7_2
  L6_2 = L6_2 + L7_2
  if L4_2 <= L6_2 then
    L7_2 = removeUpdateCall
    L8_2 = "updateRadius_"
    L9_2 = L2_2
    L8_2 = L8_2 .. L9_2
    L7_2(L8_2)
    L7_2 = objects
    L7_2 = L7_2.world
    L7_2 = L7_2[L2_2]
    L7_2.strength = 0
    L7_2 = deadBlocks
    L8_2 = objects
    L8_2 = L8_2.world
    L8_2 = L8_2[L2_2]
    L7_2[L2_2] = L8_2
    L7_2 = pairs
    L8_2 = objects
    L8_2 = L8_2.sensorList
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = L11_2[L2_2]
      if L12_2 then
        L12_2 = objects
        L12_2 = L12_2.sensorList
        L12_2 = L12_2[L10_2]
        L12_2[L2_2] = nil
      end
    end
    return
  end
  L7_2 = gamelua
  L7_2 = L7_2.setRadius
  L8_2 = L2_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = objects
  L7_2 = L7_2.world
  L7_2 = L7_2[L2_2]
  L7_2.radius = L6_2
end
L17_1.action = L18_1
L16_1.updateRadius = L17_1
L16_1 = actions
L17_1 = {}
L18_1 = {}
L18_1.timer = 0
L17_1.params = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2.blocks
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = createObject
    L8_2 = blockTable
    L9_2 = L6_2.definition
    L10_2 = L6_2.name
    L11_2 = L6_2.x
    L12_2 = L6_2.y
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L8_2 = setRotation
    L9_2 = L7_2
    L10_2 = L6_2.angle
    L8_2(L9_2, L10_2)
    L8_2 = setVelocity
    L9_2 = L7_2
    L10_2 = L6_2.velX
    L11_2 = L6_2.velY
    L8_2(L9_2, L10_2, L11_2)
  end
  L2_2 = A0_2.joints
  if L2_2 then
    L3_2 = ipairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = createJoint
      L9_2 = L7_2
      L8_2(L9_2)
    end
  end
end
L17_1.action = L18_1
L16_1.spawnObjects = L17_1
L16_1 = {}
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = handleUnderWaterExplosion
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = addBirdSpecialParticles
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = fireAction
  L2_2 = "useBombSpecialty"
  L3_2 = {}
  L4_2 = A0_2.name
  L3_2.name = L4_2
  L1_2(L2_2, L3_2)
end
L16_1.BOMB = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = addEventCall
  L2_2 = "useSlowBombSpecialty"
  L3_2 = {}
  L4_2 = A0_2.name
  L3_2.name = L4_2
  L1_2(L2_2, L3_2)
end
L16_1.SLOW_BOMB = L17_1
L17_1 = actions
L18_1 = {}
L19_1 = {}
L19_1.timer = 0
L18_1.params = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.birdName
  L1_2 = L1_2[L2_2]
  L2_2 = distance
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L5_2 = L1_2.lastX
  L6_2 = L1_2.lastY
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = L1_2.distanceLeft
  L3_2 = L3_2 - L2_2
  L1_2.distanceLeft = L3_2
  L3_2 = L1_2.x
  L1_2.lastX = L3_2
  L3_2 = L1_2.y
  L1_2.lastY = L3_2
  L3_2 = L1_2.distanceLeft
  if L3_2 < 0 then
    L3_2 = getObjectDefinition
    L4_2 = L1_2.name
    L3_2 = L3_2(L4_2)
    L4_2 = L16_1
    L5_2 = L3_2.specialty
    L4_2 = L4_2[L5_2]
    if L4_2 then
      L5_2 = L4_2
      L6_2 = L1_2
      L5_2(L6_2)
    else
      L5_2 = native
      L5_2 = L5_2.logWarning
      L6_2 = "Missing callback for specialty: "
      L7_2 = tostring
      L8_2 = L3_2.specialty
      L7_2 = L7_2(L8_2)
      L6_2 = L6_2 .. L7_2
      L5_2(L6_2)
    end
    L5_2 = removeUpdateCall
    L6_2 = "triggerSpecialtyAfterDistance_"
    L7_2 = A0_2.birdName
    L6_2 = L6_2 .. L7_2
    L5_2(L6_2)
  end
end
L18_1.action = L19_1
L17_1.triggerSpecialtyAfterDistance = L18_1
L17_1 = {}
L18_1 = actions
L19_1 = {}
L20_1 = {}
L20_1.timer = 0
L19_1.params = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.spawner
  L2_2 = blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = L17_1
  L4_2 = L17_1
  L4_2 = L4_2[L1_2]
  if not L4_2 then
    L4_2 = 0
  end
  L3_2[L1_2] = L4_2
  L3_2 = L17_1
  L4_2 = L17_1
  L4_2 = L4_2[L1_2]
  L4_2 = L4_2 + 1
  L3_2[L1_2] = L4_2
  L3_2 = assert
  L4_2 = L2_2.spawnLimit
  L5_2 = "Spawner definition is missing 'spawnLimit'."
  L3_2(L4_2, L5_2)
  L3_2 = L17_1
  L3_2 = L3_2[L1_2]
  L4_2 = L2_2.spawnLimit
  if L3_2 >= L4_2 then
    L1_2.enabled = false
  end
end
L19_1.action = L20_1
L18_1.increaseSpawnCount = L19_1
L18_1 = actions
L19_1 = {}
L20_1 = {}
L20_1.timer = 0
L19_1.params = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.obj
  L1_2 = L1_2.spawnedBy
  L2_2 = checkStillInWorld
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = objects
    L2_2 = L2_2.world
    L2_2 = L2_2[L1_2]
    L3_2 = blockTable
    L3_2 = L3_2.blocks
    L4_2 = L2_2.definition
    L3_2 = L3_2[L4_2]
    L4_2 = L17_1
    L5_2 = L17_1
    L5_2 = L5_2[L2_2]
    L5_2 = L5_2 - 1
    L4_2[L2_2] = L5_2
    L4_2 = L17_1
    L4_2 = L4_2[L2_2]
    L5_2 = L3_2.spawnLimit
    if L4_2 < L5_2 then
      L2_2.enabled = true
    end
  end
end
L19_1.action = L20_1
L18_1.decreaseSpawnCount = L19_1
L18_1 = actions
L19_1 = {}
L20_1 = {}
L20_1.timer = 0
L19_1.params = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.names
  if not L1_2 then
    L2_2 = blockTable
    L2_2 = L2_2.blocks
    L3_2 = A0_2.obj
    L3_2 = L3_2.definition
    L2_2 = L2_2[L3_2]
    L1_2 = L2_2.spawnerNames
  end
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = objects
    L7_2 = L7_2.world
    L7_2 = L7_2[L6_2]
    L7_2.enabled = true
  end
end
L19_1.action = L20_1
L18_1.enableSpawners = L19_1
L18_1 = {}
L19_1 = actions
L20_1 = {}
L21_1 = {}
L20_1.params = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = requireFile
  L2_2 = "lua/Set.lua"
  L1_2(L2_2)
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = L18_1
  L4_2 = L1_2.spawnedBy
  L5_2 = L18_1
  L6_2 = L1_2.spawnedBy
  L5_2 = L5_2[L6_2]
  if not L5_2 then
    L5_2 = lua
    L5_2 = L5_2.Set
    L6_2 = L5_2
    L5_2 = L5_2.new
    L5_2 = L5_2(L6_2)
  end
  L3_2[L4_2] = L5_2
  L3_2 = L18_1
  L4_2 = L1_2.spawnedBy
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L1_2.name
  L3_2(L4_2, L5_2)
end
L20_1.action = L21_1
L19_1.addToSpawnGroup = L20_1
L19_1 = actions
L20_1 = {}
L21_1 = {}
L21_1.timer = 0
L20_1.params = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.obj
  L2_2 = blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = L18_1
  L4_2 = L1_2.spawnedBy
  L3_2 = L3_2[L4_2]
  L5_2 = L3_2
  L4_2 = L3_2.remove
  L6_2 = L1_2.name
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.size
  L4_2 = L4_2(L5_2)
  if L4_2 == 0 then
    L4_2 = blockTable
    L4_2 = L4_2.blocks
    L5_2 = objects
    L5_2 = L5_2.world
    L6_2 = L1_2.spawnedBy
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.definition
    L4_2 = L4_2[L5_2]
    L5_2 = addEventCall
    L6_2 = L4_2.onSpawnerGroupEmpty
    L6_2 = L6_2.action
    L7_2 = L4_2.onSpawnerGroupEmpty
    L7_2 = L7_2.params
    L5_2(L6_2, L7_2)
  end
end
L20_1.action = L21_1
L19_1.removeFromSpawnGroup = L20_1
L19_1 = actions
L20_1 = {}
L21_1 = {}
L20_1.params = L21_1
function L21_1(A0_2)
  local L1_2
  L1_2 = soundManager
  L1_2 = L1_2.stopMusic
  L1_2()
end
L20_1.action = L21_1
L19_1.stopBossMusic = L20_1
