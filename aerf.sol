const ethBalance = eth.balance(this.address)

def storage:
  owner is addr at storage 0
  stor1 is mapping of uint8 at storage 1
  stor2 is uint8 at storage 2
  stor2 is uint128 at storage 2 offset 8
  stor2 is uint128 at storage 2
  stor2 is addr at storage 2
  stor2 is addr at storage 2 offset 96
  stor3 is addr at storage 3
  stor4 is addr at storage 4
  stor5 is addr at storage 5
  stor6 is addr at storage 6
  stor7 is uint128 at storage 7
  stor7 is uint128 at storage 7 offset 128
  stor7 is uint256 at storage 7

def owner(): # not payable
  return owner

def managers(address _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _param1 == _param1
  return bool(stor1[_param1])

#
#  Regular functions
#

def unknown3d35b7e4(uint256 _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  call caller with:
     value _param1 wei
       gas gas_remaining wei
  require ext_call.success

def setRecipient(address _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _param1 == _param1
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  addr(stor2.field_96) = _param1

def setManager(address _manager): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _manager == _manager
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  stor1[addr(_manager)] = 1

def removeManager(address _manager): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _manager == _manager
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  stor1[addr(_manager)] = 0

def unknownf912c64b(uint256 _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _param1 == addr(_param1)
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  stor3 = addr(_param1)

def transferOwnership(address _newOwner): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _newOwner == _newOwner
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  if not _newOwner:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
  owner = _newOwner

def showTokenBalance(address _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _param1 == _param1
  require ext_code.size(_param1)
  static call _param1.balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  return ext_call.return_data[0]

def unknown960427a4(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require _param1 == addr(_param1)
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  call _param1.transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args caller, _param2
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def unknown70db7688(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require _param1 == addr(_param1)
  require _param2 == addr(_param2)
  if Mask(96, 0, stor2.field_0) != 1:
      revert with 0, 'reentrant call'
  call _param1.transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args _param2, uint128(stor7.field_0)
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  uint128(stor7.field_0) = 0

def unknown87a23819(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require _param1 == addr(_param1)
  require _param2 == bool(_param2)
  if Mask(96, 0, stor2.field_0) != 1:
      revert with 0, 'reentrant call'
  require ext_code.size(addr(_param1))
  if bool(_param2) != 1:
      call addr(_param1).0x22c0d9f with:
           gas gas_remaining wei
          args 0, uint128(stor7.field_0), addr(this.address), 128, 0
  else:
      call addr(_param1).0x22c0d9f with:
           gas gas_remaining wei
          args uint128(stor7.field_0), 0, addr(this.address), 128, 0
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  uint256(stor7.field_0) = uint128(stor7.field_0)

def unknownf055dbe2(uint256 _param1, uint256 _param2, array _param3): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require _param1 == bool(_param1)
  require _param2 == addr(_param2)
  require _param3 <= 18446744073709551615
  require _param3 + 35 <ΓÇ▓ calldata.size
  require _param3.length <= 18446744073709551615
  require _param3 + _param3.length + 36 <= calldata.size
  if Mask(96, 0, stor2.field_0) != 1:
      revert with 0, 'reentrant call'
  mem[292 len _param3.length] = _param3[all]
  mem[_param3.length + 292] = 0
  require ext_code.size(addr(_param2))
  if _param1:
      call addr(_param2).0x128acb08 with:
           gas gas_remaining wei
          args 0, 0, bool(_param1), -uint128(stor7.field_128), 4295128740, 160, _param3.length, _param3[all], mem[_param3.length + 292 len ceil32(_param3.length) - _param3.length]
  else:
      call addr(_param2).0x128acb08 with:
           gas gas_remaining wei
          args 0, 0, bool(_param1), -uint128(stor7.field_128), 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, _param3.length, _param3[all], mem[_param3.length + 292 len ceil32(_param3.length) - _param3.length]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 64
  uint256(stor7.field_0) = uint128(stor7.field_0)

def _fallback() payable: # default function
  require calldata.size - 4 >=ΓÇ▓ 192
  require _param4 == addr(_param4)
  require _param5 == addr(_param5)
  require _param6 <= 18446744073709551615
  require _param6 + 35 <ΓÇ▓ calldata.size
  require _param6.length <= 18446744073709551615
  require _param6 + _param6.length + 36 <= calldata.size
  require stor1[caller]
  uint8(stor2.field_0) = 1
  Mask(88, 0, stor2.field_8) = 0
  mem[260 len _param6.length] = _param6[all]
  mem[_param6.length + 260] = 0
  require ext_code.size(addr(_param5))
  call addr(_param5).0x22c0d9f with:
       gas gas_remaining wei
      args 0, _param1, _param2, addr(this.address), 128, _param6.length, _param6[all], mem[_param6.length + 260 len ceil32(_param6.length) - _param6.length]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  Mask(96, 0, stor2.field_0) = 0
  require ext_code.size(addr(_param4))
  static call addr(_param4).balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  call _param4.transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args addr(stor2.field_0), ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  if _param3 * ext_call.return_data <= 10000 * block.gasprice:
      revert with 0, 'earned.sub(gasUser) le zero'
  if call.value:
      if (_param3 * ext_call.return_data * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
          call block.coinbase with:
             value (_param3 * ext_call.return_data * call.value) - (10000 * block.gasprice * call.value) / 100 wei
               gas gas_remaining wei
      else:
          call block.coinbase with:
             value eth.balance(this.address) wei
               gas gas_remaining wei

def unknown9064750b(uint256 _param1, uint256 _param2, uint256 _param3, uint256 _param4, uint256 _param5, uint256 _param6, uint256 _param7, uint256 _param8, uint256 _param9, uint256 _param10, uint256 _param11, uint256 _param12, uint256 _param13, uint256 _param14, uint256 _param15, uint256 _param16, uint256 _param17, uint256 _param18): # not payable
  require calldata.size - 4 >=ΓÇ▓ 576
  require calldata.size - 4 >=ΓÇ▓ 384
  require _param1 == addr(_param1)
  require _param2 == addr(_param2)
  require _param3 == uint128(_param3)
  require _param4 == uint128(_param4)
  require _param5 == uint128(_param5)
  require _param6 == addr(_param6)
  require _param7 == addr(_param7)
  require _param8 == addr(_param8)
  require _param9 == addr(_param9)
  require _param11 == uint64(_param11)
  require calldata.size - 388 >=ΓÇ▓ 128
  require _param13 < 4
  require _param14 == uint8(_param14)
  require _param17 == uint128(_param17)
  require _param18 == uint128(_param18)
  if Mask(96, 0, stor2.field_0) != 1:
      revert with 0, 'reentrant call'
  require _param13 < 4
  require ext_code.size(stor6)
  call stor6.0xf6274f66 with:
       gas gas_remaining wei
      args addr(_param1), addr(_param2), _param3 << 128, _param4 << 128, _param5 << 128, addr(_param6), addr(_param7), addr(_param8), addr(_param9), _param10, _param11 << 192, _param12, _param13, _param14 << 248, _param15, _param16, uint128(_param17)
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 64
  require ext_call.return_data == ext_call.return_data[16 len 16]
  require ext_call.return_data == ext_call.return_data[48 len 16]
  if ext_call.return_data < uint128(_param18):
      revert with 0, 'makerAmount < makerTokenFillAmount'

def unknown0000000b(uint256 _param1, uint256 _param2, uint256 _param3, array _param4) payable: 
  require calldata.size - 4 >=ΓÇ▓ 128
  require _param1 == addr(_param1)
  require _param4 <= 18446744073709551615
  require _param4 + 35 <ΓÇ▓ calldata.size
  require _param4.length <= 18446744073709551615
  require _param4 + _param4.length + 36 <= calldata.size
  require stor1[caller]
  uint8(stor2.field_0) = 1
  Mask(88, 0, stor2.field_8) = 0
  mem[128] = addr(_param1)
  mem[160] = 1
  idx = 0
  s = 388
  t = 128
  while idx < 1:
      mem[s] = mem[t + 12 len 20]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  mem[516 len _param4.length] = _param4[all]
  mem[_param4.length + 516] = 0
  require ext_code.size(0xba12222222228d8ba445958a75a0704d566bf2c8)
  call 0xba12222222228d8ba445958a75a0704d566bf2c8.0x5c38449e with:
       gas gas_remaining wei
      args addr(this.address), 128, 192, 256, 1, mem[388], 1, _param2, _param4.length, _param4[all], mem[_param4.length + 516 len ceil32(_param4.length) - _param4.length]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  Mask(96, 0, stor2.field_0) = 0
  require ext_code.size(addr(_param1))
  static call addr(_param1).balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  call _param1.transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args addr(stor2.field_0), ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  if _param3 * ext_call.return_data <= 10000 * block.gasprice:
      revert with 0, 'earned.sub(gasUser) le zero'
  if call.value:
      if (_param3 * ext_call.return_data * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
          call block.coinbase with:
             value (_param3 * ext_call.return_data * call.value) - (10000 * block.gasprice * call.value) / 100 wei
               gas gas_remaining wei
      else:
          call block.coinbase with:
             value eth.balance(this.address) wei
               gas gas_remaining wei

def account_info_rotate_tine(uint256 _param1) payable: 
  require calldata.size - 4 >=ΓÇ▓ 192
  require _param1 == bool(_param1)
  require cd == addr(cd)
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 164).length <= 18446744073709551615
  require cd('cd', 164).length + 36 <= calldata.size
  require stor1[caller]
  uint8(stor2.field_0) = 1
  Mask(88, 0, stor2.field_8) = 0
  mem[292 len ('cd', 164).length] = call.data[cd('cd', 164).length]
  mem[('cd', 164).length + 292] = 0
  require ext_code.size(addr(cd))
  if _param1:
      call addr(cd).0x128acb08 with:
           gas gas_remaining wei
          args 0, 0, bool(_param1), cd('cd', 164).length, call.data[cd('cd', 164).length], mem[('cd', 164).length + 292 len ceil32(('cd', 164).length) - ('cd', 164).length]
  else:
      call addr(cd).0x128acb08 with:
           gas gas_remaining wei
          args 0, 0, bool(_param1), cd('cd', 164).length, call.data[cd('cd', 164).length], mem[('cd', 164).length + 292 len ceil32(('cd', 164).length) - ('cd', 164).length]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 64
  Mask(96, 0, stor2.field_0) = 0
  require ext_code.size(addr(cd))
  static call addr(cd).balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  call cdaddress to, uint256 tokens) with:
       gas gas_remaining wei
      args addr(stor2.field_0), ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  if cd * ext_call.return_data <= 10000 * block.gasprice:
      revert with 0, 'earned.sub(gasUser) le zero'
  if call.value:
      if (cd * ext_call.return_data * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
          call block.coinbase with:
             value (cd * ext_call.return_data * call.value) - (10000 * block.gasprice * call.value) / 100 wei
               gas gas_remaining wei
      else:
          call block.coinbase with:
             value eth.balance(this.address) wei
               gas gas_remaining wei

def unknownfa461e33(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 68).length <= 18446744073709551615
  require cd('cd', 68).length + 36 <= calldata.size
  if Mask(96, 0, stor2.field_0) != 1:
      revert with 0, 'reentrant call'
  require ('cd', 68).length >=ΓÇ▓ 32
  require ('cd', 68) <= 18446744073709551615
  require cd('cd', 68) + 67 <ΓÇ▓ cd('cd', 68).length + 36
  require cd[(cd('cd', 68) + 36)] <= 18446744073709551615
  require (32 * cd[(cd('cd', 68) + 36)]) + 128 >= 96 and (32 * cd[(cd('cd', 68) + 36)]) + 128 <= 18446744073709551615
  mem[64] = (32 * cd[(cd('cd', 68) + 36)]) + 128
  mem[96] = cd[(cd('cd', 68) + 36)]
  idx = 0
  s = cd('cd', 68) + 68
  t = 128
  while idx < cd[(cd('cd', 68) + 36)]:
      require ('cd', 68).length + -('cd', 68) + -cd[s] - 32 >=ΓÇ▓ 64
      _15 = mem[64]
      require mem[64] + 64 <= 18446744073709551615 and mem[64] + 64 >= mem[64]
      mem[64] = mem[64] + 64
      require cd[(cd('cd', 68) + cd[s] + 68)] == addr(cd[(cd('cd', 68) + cd[s] + 68)])
      mem[_15] = cd[(cd('cd', 68) + cd[s] + 68)]
      require cd[(cd('cd', 68) + cd[s] + 100)] <= 18446744073709551615
      require cd('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 100)] + 99 <ΓÇ▓ cd('cd', 68).length + 36
      require cd[(cd('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 100)] + 68)] <= 18446744073709551615
      _23 = mem[64]
      require mem[64] + ceil32(cd[(cd('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 100)] + 68)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 100)] + 68)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 100)] + 68)]) + 32
      mem[_23] = cd[(cd('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 100)] + 68)]
      require ('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 100)] + cd[(cd('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 100)] + 68)] + 100 <= ('cd', 68).length + 36
      mem[_23 + 32 len cd[(cd('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 100)] + 68)]] = call.data[cd('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 100)] + 100 len cd[(cd('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 100)] + 68)]]
      mem[_23 + cd[(cd('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 100)] + 68)] + 32] = 0
      mem[_15 + 32] = _23
      mem[t] = _15
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  idx = 0
  while idx < mem[96]:
      require idx < mem[96]
      require idx < mem[96]
      call mem[mem[(32 * idx) + 128]].mem[mem[mem[(32 * idx) + 128] + 32] + 32 len 4] with:
           gas gas_remaining wei
          args mem[mem[mem[(32 * idx) + 128] + 32] + 36 len mem[mem[mem[(32 * idx) + 128] + 32]] - 4]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      continue 

def unknown10d1e85c(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 128
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 100).length <= 18446744073709551615
  require cd('cd', 100).length + 36 <= calldata.size
  if Mask(96, 0, stor2.field_0) != 1:
      revert with 0, 'reentrant call'
  require ('cd', 100).length >=ΓÇ▓ 32
  require ('cd', 100) <= 18446744073709551615
  require cd('cd', 100) + 67 <ΓÇ▓ cd('cd', 100).length + 36
  require cd[(cd('cd', 100) + 36)] <= 18446744073709551615
  require (32 * cd[(cd('cd', 100) + 36)]) + 128 >= 96 and (32 * cd[(cd('cd', 100) + 36)]) + 128 <= 18446744073709551615
  mem[64] = (32 * cd[(cd('cd', 100) + 36)]) + 128
  mem[96] = cd[(cd('cd', 100) + 36)]
  idx = 0
  s = cd('cd', 100) + 68
  t = 128
  while idx < cd[(cd('cd', 100) + 36)]:
      require ('cd', 100).length + -('cd', 100) + -cd[s] - 32 >=ΓÇ▓ 64
      _15 = mem[64]
      require mem[64] + 64 <= 18446744073709551615 and mem[64] + 64 >= mem[64]
      mem[64] = mem[64] + 64
      require cd[(cd('cd', 100) + cd[s] + 68)] == addr(cd[(cd('cd', 100) + cd[s] + 68)])
      mem[_15] = cd[(cd('cd', 100) + cd[s] + 68)]
      require cd[(cd('cd', 100) + cd[s] + 100)] <= 18446744073709551615
      require cd('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 100)] + 99 <ΓÇ▓ cd('cd', 100).length + 36
      require cd[(cd('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 100)] + 68)] <= 18446744073709551615
      _23 = mem[64]
      require mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 100)] + 68)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 100)] + 68)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 100)] + 68)]) + 32
      mem[_23] = cd[(cd('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 100)] + 68)]
      require ('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 100)] + cd[(cd('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 100)] + 68)] + 100 <= ('cd', 100).length + 36
      mem[_23 + 32 len cd[(cd('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 100)] + 68)]] = call.data[cd('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 100)] + 100 len cd[(cd('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 100)] + 68)]]
      mem[_23 + cd[(cd('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 100)] + 68)] + 32] = 0
      mem[_15 + 32] = _23
      mem[t] = _15
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  idx = 0
  while idx < mem[96]:
      require idx < mem[96]
      require idx < mem[96]
      call mem[mem[(32 * idx) + 128]].mem[mem[mem[(32 * idx) + 128] + 32] + 32 len 4] with:
           gas gas_remaining wei
          args mem[mem[mem[(32 * idx) + 128] + 32] + 36 len mem[mem[mem[(32 * idx) + 128] + 32]] - 4]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      continue 

def unknownf04f2707(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 128
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= 18446744073709551615
  mem[96] = ('cd', 4).length
  require calldata.size >= cd * ('cd', 4).length) + 36
  s = cd[4] + 36
  t = 128
  idx = 0
  while idx < ('cd', 4).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      s = s + 32
      t = t + 32
      idx = idx + 1
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= 18446744073709551615
  mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
  require calldata.size >= cd * ('cd', 36).length) + 36
  idx = 0
  s = cd[36] + 36
  t = (32 * ('cd', 4).length) + 160
  while idx < ('cd', 36).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 68).length <= 18446744073709551615
  require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= 18446744073709551615
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
  require calldata.size >= cd * ('cd', 68).length) + 36
  idx = 0
  s = cd[68] + 36
  t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
  while idx < ('cd', 68).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 100).length <= 18446744073709551615
  require ceil32(('cd', 100).length) + 224 >= 192 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(('cd', 100).length) + 224 <= 18446744073709551615
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(('cd', 100).length) + 224
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
  require cd('cd', 100).length + 36 <= calldata.size
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len ('cd', 100).length] = call.data[cd('cd', 100).length]
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ('cd', 100).length + 224] = 0
  if Mask(96, 0, stor2.field_0) != 1:
      revert with 0, 'reentrant call'
  require ('cd', 100).length >=ΓÇ▓ 32
  _88 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
  require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] <= 18446744073709551615
  require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] + 255 <ΓÇ▓ (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ('cd', 100).length + 224
  _90 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] + 224]
  require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] + 224] <= 18446744073709551615
  require (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] + 224]) + 256 >= 224 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(('cd', 100).length) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] + 224]) + 256 <= 18446744073709551615
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(('cd', 100).length) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] + 224]) + 256
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(('cd', 100).length) + 224] = _90
  idx = 0
  s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + 256
  t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(('cd', 100).length) + 256
  while idx < _90:
      _111 = mem[s]
      require ('cd', 100).length + -_88 + -mem[s] - 32 >=ΓÇ▓ 64
      _113 = mem[64]
      require mem[64] + 64 <= 18446744073709551615 and mem[64] + 64 >= mem[64]
      mem[64] = mem[64] + 64
      require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + 256] == mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + 268 len 20]
      mem[_113] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + 256]
      _125 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + 288]
      require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + 288] <= 18446744073709551615
      require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + 288] + 287 <ΓÇ▓ (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ('cd', 100).length + 224
      _127 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + 288] + 256]
      require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + 288] + 256] <= 18446744073709551615
      _128 = mem[64]
      require mem[64] + ceil32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + 288] + 256]) + 32 >= mem[64] and mem[64] + ceil32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + 288] + 256]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + 288] + 256]) + 32
      mem[_128] = _127
      require _88 + _111 + _125 + _127 + 96 <= ('cd', 100).length + 32
      u = 0
      while u < _127:
          mem[u + _128 + 32] = mem[u + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _88 + _111 + _125 + 288]
          u = u + 32
          continue 
      if ceil32(_127) > _127:
          mem[_128 + _127 + 32] = 0
      mem[_113 + 32] = _128
      mem[t] = _113
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  idx = 0
  while idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(('cd', 100).length) + 224]:
      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(('cd', 100).length) + 224]
      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(('cd', 100).length) + 224]
      call mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(('cd', 100).length) + 256]].mem[mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(('cd', 100).length) + 256] + 32] + 32 len 4] with:
           gas gas_remaining wei
          args mem[mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(('cd', 100).length) + 256] + 32] + 36 len mem[mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(('cd', 100).length) + 256] + 32]] - 4]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      continue 
  require 0 < mem[96]
  require 0 < mem[(32 * ('cd', 4).length) + 128]
  call mem[128].transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args 0xba12222222228d8ba445958a75a0704d566bf2c8, mem[(32 * ('cd', 4).length) + 160]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def gumXZCZ() payable: 
  mem[64] = 96
  require calldata.size - 4 >=ΓÇ▓ 224
  require cd == addr(cd)
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require calldata.size + -cd >=ΓÇ▓ 288
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 196).length <= 18446744073709551615
  require cd('cd', 196).length + 36 <= calldata.size
  mem[0] = caller
  mem[32] = 1
  require stor1[caller]
  require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 35
  require cd[(cd('cd', 164) + 4)] <= 18446744073709551615
  require cd('cd', 164) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 164) + 4)])
  idx = 0
  while idx < cd[(cd('cd', 164) + 4)]:
      require cd[(cd('cd', 164) + (32 * idx) + 36)] <ΓÇ▓ calldata.size + -cd('cd', 164) - 131
      require calldata.size + -cd[(cd('cd', 164) + (32 * idx) + 36)] + -cd('cd', 164) - 36 >=ΓÇ▓ 96
      _226 = mem[64]
      require mem[64] + 96 <= 18446744073709551615 and mem[64] + 96 >= mem[64]
      mem[64] = mem[64] + 96
      mem[_226] = cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 36)]
      mem[_226 + 32] = cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]
      require cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] <= 18446744073709551615
      require cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 67 <ΓÇ▓ calldata.size
      require cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)] <= 18446744073709551615
      _227 = mem[64]
      require mem[64] + ceil32(cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)]) + 32
      mem[_227] = cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)]
      require cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)] + 68 <= calldata.size
      mem[_227 + 32 len cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)]] = call.data[cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 68 len cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)]]
      mem[_227 + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)] + 32] = 0
      mem[_226 + 64] = _227
      if cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 36)] > 1:
          require cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)] >=ΓÇ▓ 128
          _235 = mem[64]
          require mem[64] + 128 <= 18446744073709551615 and mem[64] + 128 >= mem[64]
          mem[64] = mem[64] + 128
          require mem[_227 + 32] == mem[_227 + 44 len 20]
          mem[_235] = mem[_227 + 32]
          require mem[_227 + 64] == mem[_227 + 76 len 20]
          mem[_235 + 32] = mem[_227 + 64]
          mem[_235 + 64] = mem[_227 + 96]
          mem[_235 + 96] = mem[_227 + 128]
          if 3 == cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 36)]:
              _250 = mem[_235 + 96]
              mem[mem[64] + 4] = mem[_235 + 96]
              require ext_code.size(stor5)
              static call stor5.0x7e54f092 with:
                      gas gas_remaining wei
                     args _250
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _267 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _271 = mem[_267]
              if 1 == mem[_267]:
                  if 0 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                      revert with 0, 'remainingMakerAmount < amount'
              else:
                  if mem[_267]:
                      _276 = mem[_235 + 32]
                      _277 = mem[_235]
                      mem[mem[64] + 4] = mem[_235 + 12 len 20]
                      require ext_code.size(addr(_276))
                      static call addr(_276).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_277)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _297 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _271 - 1 <= mem[_297]:
                          if _271 - 1 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_297] < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                  else:
                      _274 = mem[_235 + 64]
                      _279 = mem[_235 + 32]
                      _280 = mem[_235]
                      mem[mem[64] + 4] = mem[_235 + 12 len 20]
                      require ext_code.size(addr(_279))
                      static call addr(_279).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_280)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _298 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _274 <= mem[_298]:
                          if _274 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_298] < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
          else:
              _252 = mem[_235 + 96]
              mem[mem[64] + 4] = mem[_235 + 96]
              require ext_code.size(stor4)
              static call stor4.0x7e54f092 with:
                      gas gas_remaining wei
                     args _252
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _268 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _272 = mem[_268]
              if 1 == mem[_268]:
                  if 0 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                      revert with 0, 'remainingMakerAmount < amount'
              else:
                  if mem[_268]:
                      _282 = mem[_235 + 32]
                      _283 = mem[_235]
                      mem[mem[64] + 4] = mem[_235 + 12 len 20]
                      require ext_code.size(addr(_282))
                      static call addr(_282).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_283)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _300 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _272 - 1 <= mem[_300]:
                          if _272 - 1 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_300] < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                  else:
                      _275 = mem[_235 + 64]
                      _285 = mem[_235 + 32]
                      _286 = mem[_235]
                      mem[mem[64] + 4] = mem[_235 + 12 len 20]
                      require ext_code.size(addr(_285))
                      static call addr(_285).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_286)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _301 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _275 <= mem[_301]:
                          if _275 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_301] < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
      else:
          require cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)] >=ΓÇ▓ 384
          _236 = mem[64]
          require mem[64] + 384 >= mem[64] and mem[64] + 384 <= 18446744073709551615
          mem[64] = mem[64] + 384
          require mem[_227 + 32] == mem[_227 + 44 len 20]
          mem[_236] = mem[_227 + 32]
          require mem[_227 + 64] == mem[_227 + 76 len 20]
          mem[_236 + 32] = mem[_227 + 64]
          require mem[_227 + 96] == mem[_227 + 112 len 16]
          mem[_236 + 64] = mem[_227 + 96]
          require mem[_227 + 128] == mem[_227 + 144 len 16]
          mem[_236 + 96] = mem[_227 + 128]
          require mem[_227 + 160] == mem[_227 + 176 len 16]
          mem[_236 + 128] = mem[_227 + 160]
          require mem[_227 + 192] == mem[_227 + 204 len 20]
          mem[_236 + 160] = mem[_227 + 192]
          require mem[_227 + 224] == mem[_227 + 236 len 20]
          mem[_236 + 192] = mem[_227 + 224]
          require mem[_227 + 256] == mem[_227 + 268 len 20]
          mem[_236 + 224] = mem[_227 + 256]
          require mem[_227 + 288] == mem[_227 + 300 len 20]
          mem[_236 + 256] = mem[_227 + 288]
          mem[_236 + 288] = mem[_227 + 320]
          require mem[_227 + 352] == mem[_227 + 376 len 8]
          mem[_236 + 320] = mem[_227 + 352]
          mem[_236 + 352] = mem[_227 + 384]
          mem[mem[64]] = 0x9548088900000000000000000000000000000000000000000000000000000000
          mem[mem[64] + 4] = mem[_236 + 12 len 20]
          mem[mem[64] + 36] = mem[_236 + 44 len 20]
          mem[mem[64] + 68] = mem[_236 + 80 len 16]
          mem[mem[64] + 100] = mem[_236 + 112 len 16]
          mem[mem[64] + 132] = mem[_236 + 144 len 16]
          mem[mem[64] + 164] = mem[_236 + 172 len 20]
          mem[mem[64] + 196] = mem[_236 + 204 len 20]
          mem[mem[64] + 228] = mem[_236 + 236 len 20]
          mem[mem[64] + 260] = mem[_236 + 268 len 20]
          mem[mem[64] + 292] = mem[_236 + 288]
          mem[mem[64] + 324] = mem[_236 + 344 len 8]
          mem[mem[64] + 356] = mem[_236 + 352]
          require ext_code.size(stor6)
          static call stor6.0x95480889 with:
                  gas gas_remaining wei
                 args mem[mem[64] + 4 len 384]
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _412 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          _413 = mem[64]
          require mem[64] + 96 <= 18446744073709551615 and mem[64] + 96 >= mem[64]
          mem[64] = mem[64] + 96
          mem[_413] = mem[_412]
          require mem[_412 + 32] == mem[_412 + 63 len 1]
          mem[_413 + 32] = mem[_412 + 32]
          require mem[_412 + 64] == mem[_412 + 80 len 16]
          mem[_413 + 64] = mem[_412 + 64]
          if mem[_413 + 63 len 1] != 1:
              if 0 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                  revert with 0, 'remainingMakerAmount < amount'
          else:
              if not mem[_413 + 80 len 16]:
                  _419 = mem[_236 + 64]
                  _423 = mem[_236]
                  _424 = mem[_236 + 160]
                  mem[mem[64] + 4] = mem[_236 + 172 len 20]
                  require ext_code.size(addr(_423))
                  static call addr(_423).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_424)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _433 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if uint128(_419) <= mem[_433]:
                      if uint128(_419) < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
                  else:
                      if mem[_433] < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
              else:
                  _420 = mem[_413 + 64]
                  _421 = mem[_236 + 96]
                  _422 = mem[_236 + 64]
                  require mem[_236 + 112 len 16]
                  _426 = mem[_236]
                  _427 = mem[_236 + 160]
                  mem[mem[64] + 4] = mem[_236 + 172 len 20]
                  require ext_code.size(addr(_426))
                  static call addr(_426).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_427)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _435 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if uint128(_421 - _420) * uint128(_422) / uint128(_421) <= mem[_435]:
                      if uint128(_421 - _420) * uint128(_422) / uint128(_421) < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
                  else:
                      if mem[_435] < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
      idx = idx + 1
      continue 
  require ('cd', 164).length == bool(('cd', 164).length)
  require ('cd', 164) == ('cd', 164) % 16777216
  require ('cd', 164) == addr(('cd', 164))
  if not ('cd', 164).length:
      if not ('cd', 164) % 16777216:
          require ('cd', 164) == bool(('cd', 164))
          require ext_code.size(addr(('cd', 164)))
          static call addr(('cd', 164)).getReserves() with:
                  gas gas_remaining wei
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _248 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          require mem[_248 + 64] == mem[_248 + 92 len 4]
          if ('cd', 164):
              require (997 * mem[_248 + 32]) - (997 * ('cd', 164))
              require ('cd', 164) == uint128(('cd', 164))
              if uint128((1000 * mem[_248] * ('cd', 164) / (997 * mem[_248 + 32]) - (997 * ('cd', 164))) + 1) >= uint128(('cd', 164)):
                  revert with 0, 'amountIn > checkAmount'
              uint128(stor7.field_0) = uint128((1000 * mem[_248] * ('cd', 164) / (997 * mem[_248 + 32]) - (997 * ('cd', 164))) + 1)
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = cd[36]
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = ('cd', 196).length
              mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 164] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x22c0d9f with:
                   gas gas_remaining wei
                  args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _371 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_371]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_371] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_371] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_371] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
          else:
              require (997 * mem[_248]) - (997 * ('cd', 164))
              require ('cd', 164) == uint128(('cd', 164))
              if uint128((1000 * mem[_248 + 32] * ('cd', 164) / (997 * mem[_248]) - (997 * ('cd', 164))) + 1) >= uint128(('cd', 164)):
                  revert with 0, 'amountIn > checkAmount'
              uint128(stor7.field_0) = uint128((1000 * mem[_248 + 32] * ('cd', 164) / (997 * mem[_248]) - (997 * ('cd', 164))) + 1)
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = cd[36]
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = ('cd', 196).length
              mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 164] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x22c0d9f with:
                   gas gas_remaining wei
                  args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _372 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_372]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_372] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_372] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_372] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
      else:
          mem[mem[64] + 4] = addr(('cd', 164))
          require ('cd', 164) == bool(('cd', 164))
          mem[mem[64] + 36] = bool(('cd', 164))
          mem[mem[64] + 68] = ('cd', 164)
          require ('cd', 164) == ('signextend', 2, ('cd', ('add', 164, ('cd', 164))))
          mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 164, ('cd', 164))))
          require ('cd', 164) == ('cd', 164) % 16777216
          mem[mem[64] + 132] = ('cd', 164) % 16777216
          require ('cd', 164) == addr(('cd', 164))
          mem[mem[64] + 164] = addr(('cd', 164))
          require ext_code.size(stor3)
          static call stor3.0x4aeccb60 with:
                  gas gas_remaining wei
                 args addr(('cd', 164)), bool(('cd', 164)), ('cd', 164), ('signextend', 2, ('cd', ('add', 164, ('cd', 164)))), ('cd', 164) << 232, addr(('cd', 164))
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _264 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          require ('cd', 164) == uint128(('cd', 164))
          if mem[_264 + 16 len 16] >= uint128(('cd', 164)):
              revert with 0, 'amountIn > checkAmount'
          uint128(stor7.field_0) = mem[_264 + 16 len 16]
          uint8(stor2.field_0) = 1
          Mask(88, 0, stor2.field_8) = 0
          mem[mem[64] + 36] = cd[36]
          mem[mem[64] + 68] = this.address
          mem[mem[64] + 100] = 128
          mem[mem[64] + 132] = ('cd', 196).length
          mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
          mem[mem[64] + ('cd', 196).length + 164] = 0
          require ext_code.size(addr(cd))
          call addr(cd).0x22c0d9f with:
               gas gas_remaining wei
              args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          Mask(96, 0, stor2.field_0) = 0
          mem[mem[64] + 4] = this.address
          require ext_code.size(addr(cd))
          static call addr(cd).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(this.address)
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _370 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          call cdaddress to, uint256 tokens) with:
               gas gas_remaining wei
              args addr(stor2.field_0), mem[_370]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          if cd * mem[_370] <= 10000 * block.gasprice:
              revert with 0, 'earned.sub(gasUser) le zero'
          if call.value:
              if (cd * mem[_370] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                  call block.coinbase with:
                     value (cd * mem[_370] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                       gas gas_remaining wei
              else:
                  call block.coinbase with:
                     value eth.balance(this.address) wei
                       gas gas_remaining wei
  else:
      if not ('cd', 164) % 16777216:
          require ('cd', 164) == bool(('cd', 164))
          require ext_code.size(addr(('cd', 164)))
          static call addr(('cd', 164)).getReserves() with:
                  gas gas_remaining wei
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _249 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          require mem[_249 + 64] == mem[_249 + 92 len 4]
          if ('cd', 164):
              require (997 * ('cd', 164)) + (1000 * mem[_249])
              require ('cd', 164) == uint128(('cd', 164))
              if uint128(997 * mem[_249 + 32] * ('cd', 164) / (997 * ('cd', 164)) + (1000 * mem[_249])) <= uint128(('cd', 164)):
                  revert with 0, 'amountOut < checkAmount'
              uint128(stor7.field_0) = uint128(997 * mem[_249 + 32] * ('cd', 164) / (997 * ('cd', 164)) + (1000 * mem[_249]))
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = cd[36]
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = ('cd', 196).length
              mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 164] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x22c0d9f with:
                   gas gas_remaining wei
                  args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _374 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_374]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_374] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_374] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_374] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
          else:
              require (997 * ('cd', 164)) + (1000 * mem[_249 + 32])
              require ('cd', 164) == uint128(('cd', 164))
              if uint128(997 * mem[_249] * ('cd', 164) / (997 * ('cd', 164)) + (1000 * mem[_249 + 32])) <= uint128(('cd', 164)):
                  revert with 0, 'amountOut < checkAmount'
              uint128(stor7.field_0) = uint128(997 * mem[_249] * ('cd', 164) / (997 * ('cd', 164)) + (1000 * mem[_249 + 32]))
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = cd[36]
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = ('cd', 196).length
              mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 164] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x22c0d9f with:
                   gas gas_remaining wei
                  args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _375 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_375]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_375] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_375] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_375] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
      else:
          mem[mem[64] + 4] = addr(('cd', 164))
          require ('cd', 164) == bool(('cd', 164))
          mem[mem[64] + 36] = bool(('cd', 164))
          mem[mem[64] + 68] = ('cd', 164)
          require ('cd', 164) == ('signextend', 2, ('cd', ('add', 164, ('cd', 164))))
          mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 164, ('cd', 164))))
          require ('cd', 164) == ('cd', 164) % 16777216
          mem[mem[64] + 132] = ('cd', 164) % 16777216
          require ('cd', 164) == addr(('cd', 164))
          mem[mem[64] + 164] = addr(('cd', 164))
          require ext_code.size(stor3)
          static call stor3.0x4aeccb60 with:
                  gas gas_remaining wei
                 args addr(('cd', 164)), bool(('cd', 164)), ('cd', 164), ('signextend', 2, ('cd', ('add', 164, ('cd', 164)))), ('cd', 164) << 232, addr(('cd', 164))
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _265 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          require ('cd', 164) == uint128(('cd', 164))
          if mem[_265 + 16 len 16] <= uint128(('cd', 164)):
              revert with 0, 'amountOut < checkAmount'
          uint128(stor7.field_0) = mem[_265 + 16 len 16]
          uint8(stor2.field_0) = 1
          Mask(88, 0, stor2.field_8) = 0
          mem[mem[64] + 36] = cd[36]
          mem[mem[64] + 68] = this.address
          mem[mem[64] + 100] = 128
          mem[mem[64] + 132] = ('cd', 196).length
          mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
          mem[mem[64] + ('cd', 196).length + 164] = 0
          require ext_code.size(addr(cd))
          call addr(cd).0x22c0d9f with:
               gas gas_remaining wei
              args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          Mask(96, 0, stor2.field_0) = 0
          mem[mem[64] + 4] = this.address
          require ext_code.size(addr(cd))
          static call addr(cd).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(this.address)
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _373 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          call cdaddress to, uint256 tokens) with:
               gas gas_remaining wei
              args addr(stor2.field_0), mem[_373]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          if cd * mem[_373] <= 10000 * block.gasprice:
              revert with 0, 'earned.sub(gasUser) le zero'
          if call.value:
              if (cd * mem[_373] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                  call block.coinbase with:
                     value (cd * mem[_373] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                       gas gas_remaining wei
              else:
                  call block.coinbase with:
                     value eth.balance(this.address) wei
                       gas gas_remaining wei

def unknown00000006() payable: 
  mem[64] = 96
  require calldata.size - 4 >=ΓÇ▓ 192
  require cd == addr(cd)
  require cd == addr(cd)
  require cd == bool(cd[100])
  require cd <= 18446744073709551615
  require calldata.size + -cd >=ΓÇ▓ 288
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 164).length <= 18446744073709551615
  require cd('cd', 164).length + 36 <= calldata.size
  mem[0] = caller
  mem[32] = 1
  require stor1[caller]
  require ('cd', 132) <ΓÇ▓ calldata.size + -cd[132] - 35
  require cd[(cd('cd', 132) + 4)] <= 18446744073709551615
  require cd('cd', 132) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 132) + 4)])
  idx = 0
  while idx < cd[(cd('cd', 132) + 4)]:
      require cd[(cd('cd', 132) + (32 * idx) + 36)] <ΓÇ▓ calldata.size + -cd('cd', 132) - 131
      require calldata.size + -cd[(cd('cd', 132) + (32 * idx) + 36)] + -cd('cd', 132) - 36 >=ΓÇ▓ 96
      _274 = mem[64]
      require mem[64] + 96 <= 18446744073709551615 and mem[64] + 96 >= mem[64]
      mem[64] = mem[64] + 96
      mem[_274] = cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 36)]
      mem[_274 + 32] = cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]
      require cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] <= 18446744073709551615
      require cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 67 <ΓÇ▓ calldata.size
      require cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)] <= 18446744073709551615
      _275 = mem[64]
      require mem[64] + ceil32(cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)]) + 32
      mem[_275] = cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)]
      require cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)] + 68 <= calldata.size
      mem[_275 + 32 len cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)]] = call.data[cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 68 len cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)]]
      mem[_275 + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)] + 32] = 0
      mem[_274 + 64] = _275
      if cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 36)] > 1:
          require cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)] >=ΓÇ▓ 128
          _283 = mem[64]
          require mem[64] + 128 <= 18446744073709551615 and mem[64] + 128 >= mem[64]
          mem[64] = mem[64] + 128
          require mem[_275 + 32] == mem[_275 + 44 len 20]
          mem[_283] = mem[_275 + 32]
          require mem[_275 + 64] == mem[_275 + 76 len 20]
          mem[_283 + 32] = mem[_275 + 64]
          mem[_283 + 64] = mem[_275 + 96]
          mem[_283 + 96] = mem[_275 + 128]
          if 3 == cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 36)]:
              _298 = mem[_283 + 96]
              mem[mem[64] + 4] = mem[_283 + 96]
              require ext_code.size(stor5)
              static call stor5.0x7e54f092 with:
                      gas gas_remaining wei
                     args _298
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _315 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _319 = mem[_315]
              if 1 == mem[_315]:
                  if 0 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                      revert with 0, 'remainingMakerAmount < amount'
              else:
                  if mem[_315]:
                      _324 = mem[_283 + 32]
                      _325 = mem[_283]
                      mem[mem[64] + 4] = mem[_283 + 12 len 20]
                      require ext_code.size(addr(_324))
                      static call addr(_324).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_325)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _345 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _319 - 1 <= mem[_345]:
                          if _319 - 1 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_345] < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                  else:
                      _322 = mem[_283 + 64]
                      _327 = mem[_283 + 32]
                      _328 = mem[_283]
                      mem[mem[64] + 4] = mem[_283 + 12 len 20]
                      require ext_code.size(addr(_327))
                      static call addr(_327).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_328)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _346 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _322 <= mem[_346]:
                          if _322 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_346] < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
          else:
              _300 = mem[_283 + 96]
              mem[mem[64] + 4] = mem[_283 + 96]
              require ext_code.size(stor4)
              static call stor4.0x7e54f092 with:
                      gas gas_remaining wei
                     args _300
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _316 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _320 = mem[_316]
              if 1 == mem[_316]:
                  if 0 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                      revert with 0, 'remainingMakerAmount < amount'
              else:
                  if mem[_316]:
                      _330 = mem[_283 + 32]
                      _331 = mem[_283]
                      mem[mem[64] + 4] = mem[_283 + 12 len 20]
                      require ext_code.size(addr(_330))
                      static call addr(_330).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_331)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _348 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _320 - 1 <= mem[_348]:
                          if _320 - 1 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_348] < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                  else:
                      _323 = mem[_283 + 64]
                      _333 = mem[_283 + 32]
                      _334 = mem[_283]
                      mem[mem[64] + 4] = mem[_283 + 12 len 20]
                      require ext_code.size(addr(_333))
                      static call addr(_333).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_334)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _349 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _323 <= mem[_349]:
                          if _323 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_349] < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
      else:
          require cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)] >=ΓÇ▓ 384
          _284 = mem[64]
          require mem[64] + 384 >= mem[64] and mem[64] + 384 <= 18446744073709551615
          mem[64] = mem[64] + 384
          require mem[_275 + 32] == mem[_275 + 44 len 20]
          mem[_284] = mem[_275 + 32]
          require mem[_275 + 64] == mem[_275 + 76 len 20]
          mem[_284 + 32] = mem[_275 + 64]
          require mem[_275 + 96] == mem[_275 + 112 len 16]
          mem[_284 + 64] = mem[_275 + 96]
          require mem[_275 + 128] == mem[_275 + 144 len 16]
          mem[_284 + 96] = mem[_275 + 128]
          require mem[_275 + 160] == mem[_275 + 176 len 16]
          mem[_284 + 128] = mem[_275 + 160]
          require mem[_275 + 192] == mem[_275 + 204 len 20]
          mem[_284 + 160] = mem[_275 + 192]
          require mem[_275 + 224] == mem[_275 + 236 len 20]
          mem[_284 + 192] = mem[_275 + 224]
          require mem[_275 + 256] == mem[_275 + 268 len 20]
          mem[_284 + 224] = mem[_275 + 256]
          require mem[_275 + 288] == mem[_275 + 300 len 20]
          mem[_284 + 256] = mem[_275 + 288]
          mem[_284 + 288] = mem[_275 + 320]
          require mem[_275 + 352] == mem[_275 + 376 len 8]
          mem[_284 + 320] = mem[_275 + 352]
          mem[_284 + 352] = mem[_275 + 384]
          mem[mem[64]] = 0x9548088900000000000000000000000000000000000000000000000000000000
          mem[mem[64] + 4] = mem[_284 + 12 len 20]
          mem[mem[64] + 36] = mem[_284 + 44 len 20]
          mem[mem[64] + 68] = mem[_284 + 80 len 16]
          mem[mem[64] + 100] = mem[_284 + 112 len 16]
          mem[mem[64] + 132] = mem[_284 + 144 len 16]
          mem[mem[64] + 164] = mem[_284 + 172 len 20]
          mem[mem[64] + 196] = mem[_284 + 204 len 20]
          mem[mem[64] + 228] = mem[_284 + 236 len 20]
          mem[mem[64] + 260] = mem[_284 + 268 len 20]
          mem[mem[64] + 292] = mem[_284 + 288]
          mem[mem[64] + 324] = mem[_284 + 344 len 8]
          mem[mem[64] + 356] = mem[_284 + 352]
          require ext_code.size(stor6)
          static call stor6.0x95480889 with:
                  gas gas_remaining wei
                 args mem[mem[64] + 4 len 384]
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _508 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          _509 = mem[64]
          require mem[64] + 96 <= 18446744073709551615 and mem[64] + 96 >= mem[64]
          mem[64] = mem[64] + 96
          mem[_509] = mem[_508]
          require mem[_508 + 32] == mem[_508 + 63 len 1]
          mem[_509 + 32] = mem[_508 + 32]
          require mem[_508 + 64] == mem[_508 + 80 len 16]
          mem[_509 + 64] = mem[_508 + 64]
          if mem[_509 + 63 len 1] != 1:
              if 0 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                  revert with 0, 'remainingMakerAmount < amount'
          else:
              if not mem[_509 + 80 len 16]:
                  _515 = mem[_284 + 64]
                  _519 = mem[_284]
                  _520 = mem[_284 + 160]
                  mem[mem[64] + 4] = mem[_284 + 172 len 20]
                  require ext_code.size(addr(_519))
                  static call addr(_519).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_520)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _529 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if uint128(_515) <= mem[_529]:
                      if uint128(_515) < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
                  else:
                      if mem[_529] < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
              else:
                  _516 = mem[_509 + 64]
                  _517 = mem[_284 + 96]
                  _518 = mem[_284 + 64]
                  require mem[_284 + 112 len 16]
                  _522 = mem[_284]
                  _523 = mem[_284 + 160]
                  mem[mem[64] + 4] = mem[_284 + 172 len 20]
                  require ext_code.size(addr(_522))
                  static call addr(_522).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_523)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _531 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if uint128(_517 - _516) * uint128(_518) / uint128(_517) <= mem[_531]:
                      if uint128(_517 - _516) * uint128(_518) / uint128(_517) < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
                  else:
                      if mem[_531] < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
      idx = idx + 1
      continue 
  require ('cd', 132).length == bool(('cd', 132).length)
  require ('cd', 132) == ('cd', 132) % 16777216
  require ('cd', 132) == addr(('cd', 132))
  if not ('cd', 132).length:
      if not ('cd', 132) % 16777216:
          require ('cd', 132) == bool(('cd', 132))
          require ext_code.size(addr(('cd', 132)))
          static call addr(('cd', 132)).getReserves() with:
                  gas gas_remaining wei
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _296 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          _303 = mem[_296]
          _304 = mem[_296 + 32]
          require mem[_296 + 64] == mem[_296 + 92 len 4]
          if ('cd', 132):
              require (997 * mem[_296 + 32]) - (997 * ('cd', 132))
              require ('cd', 132) == uint128(('cd', 132))
              if uint128((1000 * mem[_296] * ('cd', 132) / (997 * mem[_296 + 32]) - (997 * ('cd', 132))) + 1) >= uint128(('cd', 132)):
                  revert with 0, 'amountIn > checkAmount'
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              if bool(cd == 1:
                  mem[mem[64] + 36] = uint128((1000 * mem[_296] * ('cd', 132) / (997 * mem[_296 + 32]) - (997 * ('cd', 132))) + 1)
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = ('cd', 164).length
                  mem[mem[64] + 164 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 164] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, (1000 * _303 * ('cd', 132) / (997 * _304) - (997 * ('cd', 132))) + 1 << 128, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[mem[64] + ('cd', 164).length + 164 len ceil32(('cd', 164).length) - ('cd', 164).length]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _445 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_445]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_445] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_445] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_445] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 4] = uint128((1000 * mem[_296] * ('cd', 132) / (997 * mem[_296 + 32]) - (997 * ('cd', 132))) + 1)
                  mem[mem[64] + 36] = 0
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = ('cd', 164).length
                  mem[mem[64] + 164 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 164] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x22c0d9f with:
                       gas gas_remaining wei
                      args mem[mem[64] + 4], 0, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[mem[64] + ('cd', 164).length + 164 len ceil32(('cd', 164).length) - ('cd', 164).length]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _444 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_444]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_444] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_444] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_444] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
          else:
              require (997 * mem[_296]) - (997 * ('cd', 132))
              require ('cd', 132) == uint128(('cd', 132))
              if uint128((1000 * mem[_296 + 32] * ('cd', 132) / (997 * mem[_296]) - (997 * ('cd', 132))) + 1) >= uint128(('cd', 132)):
                  revert with 0, 'amountIn > checkAmount'
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              if bool(cd == 1:
                  mem[mem[64] + 36] = uint128((1000 * mem[_296 + 32] * ('cd', 132) / (997 * mem[_296]) - (997 * ('cd', 132))) + 1)
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = ('cd', 164).length
                  mem[mem[64] + 164 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 164] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, (1000 * _304 * ('cd', 132) / (997 * _303) - (997 * ('cd', 132))) + 1 << 128, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[mem[64] + ('cd', 164).length + 164 len ceil32(('cd', 164).length) - ('cd', 164).length]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _447 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_447]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_447] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_447] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_447] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 4] = uint128((1000 * mem[_296 + 32] * ('cd', 132) / (997 * mem[_296]) - (997 * ('cd', 132))) + 1)
                  mem[mem[64] + 36] = 0
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = ('cd', 164).length
                  mem[mem[64] + 164 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 164] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x22c0d9f with:
                       gas gas_remaining wei
                      args mem[mem[64] + 4], 0, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[mem[64] + ('cd', 164).length + 164 len ceil32(('cd', 164).length) - ('cd', 164).length]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _446 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_446]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_446] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_446] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_446] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
      else:
          mem[mem[64] + 4] = addr(('cd', 132))
          require ('cd', 132) == bool(('cd', 132))
          mem[mem[64] + 36] = bool(('cd', 132))
          mem[mem[64] + 68] = ('cd', 132)
          require ('cd', 132) == ('signextend', 2, ('cd', ('add', 164, ('cd', 132))))
          mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 164, ('cd', 132))))
          require ('cd', 132) == ('cd', 132) % 16777216
          mem[mem[64] + 132] = ('cd', 132) % 16777216
          require ('cd', 132) == addr(('cd', 132))
          mem[mem[64] + 164] = addr(('cd', 132))
          require ext_code.size(stor3)
          static call stor3.0x4aeccb60 with:
                  gas gas_remaining wei
                 args addr(('cd', 132)), bool(('cd', 132)), ('cd', 132), ('signextend', 2, ('cd', ('add', 164, ('cd', 132)))), ('cd', 132) << 232, addr(('cd', 132))
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _312 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          _317 = mem[_312]
          require ('cd', 132) == uint128(('cd', 132))
          if mem[_312 + 16 len 16] >= uint128(('cd', 132)):
              revert with 0, 'amountIn > checkAmount'
          uint8(stor2.field_0) = 1
          Mask(88, 0, stor2.field_8) = 0
          if bool(cd == 1:
              mem[mem[64] + 36] = mem[_312 + 16 len 16]
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = ('cd', 164).length
              mem[mem[64] + 164 len ('cd', 164).length] = call.data[cd('cd', 164).length]
              mem[mem[64] + ('cd', 164).length + 164] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, _317 << 128, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[mem[64] + ('cd', 164).length + 164 len ceil32(('cd', 164).length) - ('cd', 164).length]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _443 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_443]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_443] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_443] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_443] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
          else:
              mem[mem[64] + 4] = mem[_312 + 16 len 16]
              mem[mem[64] + 36] = 0
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = ('cd', 164).length
              mem[mem[64] + 164 len ('cd', 164).length] = call.data[cd('cd', 164).length]
              mem[mem[64] + ('cd', 164).length + 164] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x22c0d9f with:
                   gas gas_remaining wei
                  args mem[mem[64] + 4], 0, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[mem[64] + ('cd', 164).length + 164 len ceil32(('cd', 164).length) - ('cd', 164).length]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _442 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_442]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_442] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_442] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_442] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
  else:
      if not ('cd', 132) % 16777216:
          require ('cd', 132) == bool(('cd', 132))
          require ext_code.size(addr(('cd', 132)))
          static call addr(('cd', 132)).getReserves() with:
                  gas gas_remaining wei
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _297 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          _307 = mem[_297]
          _308 = mem[_297 + 32]
          require mem[_297 + 64] == mem[_297 + 92 len 4]
          if ('cd', 132):
              require (997 * ('cd', 132)) + (1000 * mem[_297])
              require ('cd', 132) == uint128(('cd', 132))
              if uint128(997 * mem[_297 + 32] * ('cd', 132) / (997 * ('cd', 132)) + (1000 * mem[_297])) <= uint128(('cd', 132)):
                  revert with 0, 'amountOut < checkAmount'
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              if bool(cd == 1:
                  mem[mem[64] + 36] = uint128(997 * mem[_297 + 32] * ('cd', 132) / (997 * ('cd', 132)) + (1000 * mem[_297]))
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = ('cd', 164).length
                  mem[mem[64] + 164 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 164] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, 997 * _308 * ('cd', 132) / (997 * ('cd', 132)) + (1000 * _307) << 128, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[mem[64] + ('cd', 164).length + 164 len ceil32(('cd', 164).length) - ('cd', 164).length]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _451 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_451]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_451] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_451] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_451] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 4] = uint128(997 * mem[_297 + 32] * ('cd', 132) / (997 * ('cd', 132)) + (1000 * mem[_297]))
                  mem[mem[64] + 36] = 0
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = ('cd', 164).length
                  mem[mem[64] + 164 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 164] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x22c0d9f with:
                       gas gas_remaining wei
                      args mem[mem[64] + 4], 0, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[mem[64] + ('cd', 164).length + 164 len ceil32(('cd', 164).length) - ('cd', 164).length]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _450 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_450]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_450] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_450] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_450] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
          else:
              require (997 * ('cd', 132)) + (1000 * mem[_297 + 32])
              require ('cd', 132) == uint128(('cd', 132))
              if uint128(997 * mem[_297] * ('cd', 132) / (997 * ('cd', 132)) + (1000 * mem[_297 + 32])) <= uint128(('cd', 132)):
                  revert with 0, 'amountOut < checkAmount'
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              if bool(cd == 1:
                  mem[mem[64] + 36] = uint128(997 * mem[_297] * ('cd', 132) / (997 * ('cd', 132)) + (1000 * mem[_297 + 32]))
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = ('cd', 164).length
                  mem[mem[64] + 164 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 164] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, 997 * _307 * ('cd', 132) / (997 * ('cd', 132)) + (1000 * _308) << 128, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[mem[64] + ('cd', 164).length + 164 len ceil32(('cd', 164).length) - ('cd', 164).length]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _453 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_453]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_453] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_453] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_453] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 4] = uint128(997 * mem[_297] * ('cd', 132) / (997 * ('cd', 132)) + (1000 * mem[_297 + 32]))
                  mem[mem[64] + 36] = 0
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = ('cd', 164).length
                  mem[mem[64] + 164 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 164] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x22c0d9f with:
                       gas gas_remaining wei
                      args mem[mem[64] + 4], 0, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[mem[64] + ('cd', 164).length + 164 len ceil32(('cd', 164).length) - ('cd', 164).length]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _452 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_452]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_452] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_452] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_452] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
      else:
          mem[mem[64] + 4] = addr(('cd', 132))
          require ('cd', 132) == bool(('cd', 132))
          mem[mem[64] + 36] = bool(('cd', 132))
          mem[mem[64] + 68] = ('cd', 132)
          require ('cd', 132) == ('signextend', 2, ('cd', ('add', 164, ('cd', 132))))
          mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 164, ('cd', 132))))
          require ('cd', 132) == ('cd', 132) % 16777216
          mem[mem[64] + 132] = ('cd', 132) % 16777216
          require ('cd', 132) == addr(('cd', 132))
          mem[mem[64] + 164] = addr(('cd', 132))
          require ext_code.size(stor3)
          static call stor3.0x4aeccb60 with:
                  gas gas_remaining wei
                 args addr(('cd', 132)), bool(('cd', 132)), ('cd', 132), ('signextend', 2, ('cd', ('add', 164, ('cd', 132)))), ('cd', 132) << 232, addr(('cd', 132))
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _313 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          _318 = mem[_313]
          require ('cd', 132) == uint128(('cd', 132))
          if mem[_313 + 16 len 16] <= uint128(('cd', 132)):
              revert with 0, 'amountOut < checkAmount'
          uint8(stor2.field_0) = 1
          Mask(88, 0, stor2.field_8) = 0
          if bool(cd == 1:
              mem[mem[64] + 36] = mem[_313 + 16 len 16]
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = ('cd', 164).length
              mem[mem[64] + 164 len ('cd', 164).length] = call.data[cd('cd', 164).length]
              mem[mem[64] + ('cd', 164).length + 164] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, _318 << 128, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[mem[64] + ('cd', 164).length + 164 len ceil32(('cd', 164).length) - ('cd', 164).length]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _449 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_449]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_449] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_449] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_449] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
          else:
              mem[mem[64] + 4] = mem[_313 + 16 len 16]
              mem[mem[64] + 36] = 0
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = ('cd', 164).length
              mem[mem[64] + 164 len ('cd', 164).length] = call.data[cd('cd', 164).length]
              mem[mem[64] + ('cd', 164).length + 164] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x22c0d9f with:
                   gas gas_remaining wei
                  args mem[mem[64] + 4], 0, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[mem[64] + ('cd', 164).length + 164 len ceil32(('cd', 164).length) - ('cd', 164).length]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _448 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_448]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_448] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_448] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_448] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei

def unknown0000000f() payable: 
  mem[64] = 96
  require calldata.size - 4 >=ΓÇ▓ 224
  require cd == bool(cd[4])
  require cd == addr(cd)
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require calldata.size + -cd >=ΓÇ▓ 288
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 196).length <= 18446744073709551615
  require cd('cd', 196).length + 36 <= calldata.size
  mem[0] = caller
  mem[32] = 1
  require stor1[caller]
  require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 35
  require cd[(cd('cd', 164) + 4)] <= 18446744073709551615
  require cd('cd', 164) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 164) + 4)])
  idx = 0
  while idx < cd[(cd('cd', 164) + 4)]:
      require cd[(cd('cd', 164) + (32 * idx) + 36)] <ΓÇ▓ calldata.size + -cd('cd', 164) - 131
      require calldata.size + -cd[(cd('cd', 164) + (32 * idx) + 36)] + -cd('cd', 164) - 36 >=ΓÇ▓ 96
      _310 = mem[64]
      require mem[64] + 96 <= 18446744073709551615 and mem[64] + 96 >= mem[64]
      mem[64] = mem[64] + 96
      mem[_310] = cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 36)]
      mem[_310 + 32] = cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]
      require cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] <= 18446744073709551615
      require cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 67 <ΓÇ▓ calldata.size
      require cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)] <= 18446744073709551615
      _311 = mem[64]
      require mem[64] + ceil32(cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)]) + 32
      mem[_311] = cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)]
      require cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)] + 68 <= calldata.size
      mem[_311 + 32 len cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)]] = call.data[cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 68 len cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)]]
      mem[_311 + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)] + 32] = 0
      mem[_310 + 64] = _311
      if cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 36)] > 1:
          require cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)] >=ΓÇ▓ 128
          _319 = mem[64]
          require mem[64] + 128 <= 18446744073709551615 and mem[64] + 128 >= mem[64]
          mem[64] = mem[64] + 128
          require mem[_311 + 32] == mem[_311 + 44 len 20]
          mem[_319] = mem[_311 + 32]
          require mem[_311 + 64] == mem[_311 + 76 len 20]
          mem[_319 + 32] = mem[_311 + 64]
          mem[_319 + 64] = mem[_311 + 96]
          mem[_319 + 96] = mem[_311 + 128]
          if 3 == cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 36)]:
              _334 = mem[_319 + 96]
              mem[mem[64] + 4] = mem[_319 + 96]
              require ext_code.size(stor5)
              static call stor5.0x7e54f092 with:
                      gas gas_remaining wei
                     args _334
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _351 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _355 = mem[_351]
              if 1 == mem[_351]:
                  if 0 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                      revert with 0, 'remainingMakerAmount < amount'
              else:
                  if mem[_351]:
                      _360 = mem[_319 + 32]
                      _361 = mem[_319]
                      mem[mem[64] + 4] = mem[_319 + 12 len 20]
                      require ext_code.size(addr(_360))
                      static call addr(_360).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_361)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _381 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _355 - 1 <= mem[_381]:
                          if _355 - 1 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_381] < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                  else:
                      _358 = mem[_319 + 64]
                      _363 = mem[_319 + 32]
                      _364 = mem[_319]
                      mem[mem[64] + 4] = mem[_319 + 12 len 20]
                      require ext_code.size(addr(_363))
                      static call addr(_363).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_364)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _382 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _358 <= mem[_382]:
                          if _358 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_382] < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
          else:
              _336 = mem[_319 + 96]
              mem[mem[64] + 4] = mem[_319 + 96]
              require ext_code.size(stor4)
              static call stor4.0x7e54f092 with:
                      gas gas_remaining wei
                     args _336
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _352 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _356 = mem[_352]
              if 1 == mem[_352]:
                  if 0 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                      revert with 0, 'remainingMakerAmount < amount'
              else:
                  if mem[_352]:
                      _366 = mem[_319 + 32]
                      _367 = mem[_319]
                      mem[mem[64] + 4] = mem[_319 + 12 len 20]
                      require ext_code.size(addr(_366))
                      static call addr(_366).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_367)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _384 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _356 - 1 <= mem[_384]:
                          if _356 - 1 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_384] < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                  else:
                      _359 = mem[_319 + 64]
                      _369 = mem[_319 + 32]
                      _370 = mem[_319]
                      mem[mem[64] + 4] = mem[_319 + 12 len 20]
                      require ext_code.size(addr(_369))
                      static call addr(_369).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_370)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _385 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _359 <= mem[_385]:
                          if _359 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_385] < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
      else:
          require cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 100)] + 36)] >=ΓÇ▓ 384
          _320 = mem[64]
          require mem[64] + 384 >= mem[64] and mem[64] + 384 <= 18446744073709551615
          mem[64] = mem[64] + 384
          require mem[_311 + 32] == mem[_311 + 44 len 20]
          mem[_320] = mem[_311 + 32]
          require mem[_311 + 64] == mem[_311 + 76 len 20]
          mem[_320 + 32] = mem[_311 + 64]
          require mem[_311 + 96] == mem[_311 + 112 len 16]
          mem[_320 + 64] = mem[_311 + 96]
          require mem[_311 + 128] == mem[_311 + 144 len 16]
          mem[_320 + 96] = mem[_311 + 128]
          require mem[_311 + 160] == mem[_311 + 176 len 16]
          mem[_320 + 128] = mem[_311 + 160]
          require mem[_311 + 192] == mem[_311 + 204 len 20]
          mem[_320 + 160] = mem[_311 + 192]
          require mem[_311 + 224] == mem[_311 + 236 len 20]
          mem[_320 + 192] = mem[_311 + 224]
          require mem[_311 + 256] == mem[_311 + 268 len 20]
          mem[_320 + 224] = mem[_311 + 256]
          require mem[_311 + 288] == mem[_311 + 300 len 20]
          mem[_320 + 256] = mem[_311 + 288]
          mem[_320 + 288] = mem[_311 + 320]
          require mem[_311 + 352] == mem[_311 + 376 len 8]
          mem[_320 + 320] = mem[_311 + 352]
          mem[_320 + 352] = mem[_311 + 384]
          mem[mem[64]] = 0x9548088900000000000000000000000000000000000000000000000000000000
          mem[mem[64] + 4] = mem[_320 + 12 len 20]
          mem[mem[64] + 36] = mem[_320 + 44 len 20]
          mem[mem[64] + 68] = mem[_320 + 80 len 16]
          mem[mem[64] + 100] = mem[_320 + 112 len 16]
          mem[mem[64] + 132] = mem[_320 + 144 len 16]
          mem[mem[64] + 164] = mem[_320 + 172 len 20]
          mem[mem[64] + 196] = mem[_320 + 204 len 20]
          mem[mem[64] + 228] = mem[_320 + 236 len 20]
          mem[mem[64] + 260] = mem[_320 + 268 len 20]
          mem[mem[64] + 292] = mem[_320 + 288]
          mem[mem[64] + 324] = mem[_320 + 344 len 8]
          mem[mem[64] + 356] = mem[_320 + 352]
          require ext_code.size(stor6)
          static call stor6.0x95480889 with:
                  gas gas_remaining wei
                 args mem[mem[64] + 4 len 384]
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _580 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          _581 = mem[64]
          require mem[64] + 96 <= 18446744073709551615 and mem[64] + 96 >= mem[64]
          mem[64] = mem[64] + 96
          mem[_581] = mem[_580]
          require mem[_580 + 32] == mem[_580 + 63 len 1]
          mem[_581 + 32] = mem[_580 + 32]
          require mem[_580 + 64] == mem[_580 + 80 len 16]
          mem[_581 + 64] = mem[_580 + 64]
          if mem[_581 + 63 len 1] != 1:
              if 0 < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                  revert with 0, 'remainingMakerAmount < amount'
          else:
              if not mem[_581 + 80 len 16]:
                  _587 = mem[_320 + 64]
                  _591 = mem[_320]
                  _592 = mem[_320 + 160]
                  mem[mem[64] + 4] = mem[_320 + 172 len 20]
                  require ext_code.size(addr(_591))
                  static call addr(_591).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_592)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _601 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if uint128(_587) <= mem[_601]:
                      if uint128(_587) < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
                  else:
                      if mem[_601] < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
              else:
                  _588 = mem[_581 + 64]
                  _589 = mem[_320 + 96]
                  _590 = mem[_320 + 64]
                  require mem[_320 + 112 len 16]
                  _594 = mem[_320]
                  _595 = mem[_320 + 160]
                  mem[mem[64] + 4] = mem[_320 + 172 len 20]
                  require ext_code.size(addr(_594))
                  static call addr(_594).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_595)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _603 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if uint128(_589 - _588) * uint128(_590) / uint128(_589) <= mem[_603]:
                      if uint128(_589 - _588) * uint128(_590) / uint128(_589) < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
                  else:
                      if mem[_603] < cd[(cd[(cd('cd', 164) + (32 * idx) + 36)] + cd('cd', 164) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
      idx = idx + 1
      continue 
  require ('cd', 164).length == bool(('cd', 164).length)
  require ('cd', 164) == ('cd', 164) % 16777216
  require ('cd', 164) == addr(('cd', 164))
  if not ('cd', 164).length:
      if not ('cd', 164) % 16777216:
          require ('cd', 164) == bool(('cd', 164))
          require ext_code.size(addr(('cd', 164)))
          static call addr(('cd', 164)).getReserves() with:
                  gas gas_remaining wei
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _332 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          require mem[_332 + 64] == mem[_332 + 92 len 4]
          if ('cd', 164):
              require (997 * mem[_332 + 32]) - (997 * ('cd', 164))
              require ('cd', 164) == uint128(('cd', 164))
              if uint128((1000 * mem[_332] * ('cd', 164) / (997 * mem[_332 + 32]) - (997 * ('cd', 164))) + 1) >= uint128(('cd', 164)):
                  revert with 0, 'amountIn > checkAmount'
              uint128(stor7.field_0) = uint128((1000 * mem[_332] * ('cd', 164) / (997 * mem[_332 + 32]) - (997 * ('cd', 164))) + 1)
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = bool(cd[4])
              mem[mem[64] + 68] = cd[36]
              if cd[4]:
                  mem[mem[64] + 100] = 4295128740
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _517 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_517]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_517] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_517] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_517] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _518 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_518]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_518] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_518] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_518] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
          else:
              require (997 * mem[_332]) - (997 * ('cd', 164))
              require ('cd', 164) == uint128(('cd', 164))
              if uint128((1000 * mem[_332 + 32] * ('cd', 164) / (997 * mem[_332]) - (997 * ('cd', 164))) + 1) >= uint128(('cd', 164)):
                  revert with 0, 'amountIn > checkAmount'
              uint128(stor7.field_0) = uint128((1000 * mem[_332 + 32] * ('cd', 164) / (997 * mem[_332]) - (997 * ('cd', 164))) + 1)
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = bool(cd[4])
              mem[mem[64] + 68] = cd[36]
              if cd[4]:
                  mem[mem[64] + 100] = 4295128740
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _519 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_519]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_519] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_519] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_519] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _520 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_520]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_520] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_520] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_520] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
      else:
          mem[mem[64] + 4] = addr(('cd', 164))
          require ('cd', 164) == bool(('cd', 164))
          mem[mem[64] + 36] = bool(('cd', 164))
          mem[mem[64] + 68] = ('cd', 164)
          require ('cd', 164) == ('signextend', 2, ('cd', ('add', 164, ('cd', 164))))
          mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 164, ('cd', 164))))
          require ('cd', 164) == ('cd', 164) % 16777216
          mem[mem[64] + 132] = ('cd', 164) % 16777216
          require ('cd', 164) == addr(('cd', 164))
          mem[mem[64] + 164] = addr(('cd', 164))
          require ext_code.size(stor3)
          static call stor3.0x4aeccb60 with:
                  gas gas_remaining wei
                 args addr(('cd', 164)), bool(('cd', 164)), ('cd', 164), ('signextend', 2, ('cd', ('add', 164, ('cd', 164)))), ('cd', 164) << 232, addr(('cd', 164))
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _348 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          require ('cd', 164) == uint128(('cd', 164))
          if mem[_348 + 16 len 16] >= uint128(('cd', 164)):
              revert with 0, 'amountIn > checkAmount'
          uint128(stor7.field_0) = mem[_348 + 16 len 16]
          uint8(stor2.field_0) = 1
          Mask(88, 0, stor2.field_8) = 0
          mem[mem[64] + 36] = bool(cd[4])
          mem[mem[64] + 68] = cd[36]
          if cd[4]:
              mem[mem[64] + 100] = 4295128740
              mem[mem[64] + 132] = 160
              mem[mem[64] + 164] = ('cd', 196).length
              mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 196] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x128acb08 with:
                   gas gas_remaining wei
                  args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              mem[mem[64] len 64] = ext_call.return_data[0 len 64]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 64
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _515 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_515]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_515] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_515] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_515] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
          else:
              mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
              mem[mem[64] + 132] = 160
              mem[mem[64] + 164] = ('cd', 196).length
              mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 196] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x128acb08 with:
                   gas gas_remaining wei
                  args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              mem[mem[64] len 64] = ext_call.return_data[0 len 64]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 64
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _516 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_516]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_516] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_516] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_516] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
  else:
      if not ('cd', 164) % 16777216:
          require ('cd', 164) == bool(('cd', 164))
          require ext_code.size(addr(('cd', 164)))
          static call addr(('cd', 164)).getReserves() with:
                  gas gas_remaining wei
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _333 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          require mem[_333 + 64] == mem[_333 + 92 len 4]
          if ('cd', 164):
              require (997 * ('cd', 164)) + (1000 * mem[_333])
              require ('cd', 164) == uint128(('cd', 164))
              if uint128(997 * mem[_333 + 32] * ('cd', 164) / (997 * ('cd', 164)) + (1000 * mem[_333])) <= uint128(('cd', 164)):
                  revert with 0, 'amountOut < checkAmount'
              uint128(stor7.field_0) = uint128(997 * mem[_333 + 32] * ('cd', 164) / (997 * ('cd', 164)) + (1000 * mem[_333]))
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = bool(cd[4])
              mem[mem[64] + 68] = cd[36]
              if cd[4]:
                  mem[mem[64] + 100] = 4295128740
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _523 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_523]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_523] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_523] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_523] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _524 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_524]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_524] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_524] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_524] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
          else:
              require (997 * ('cd', 164)) + (1000 * mem[_333 + 32])
              require ('cd', 164) == uint128(('cd', 164))
              if uint128(997 * mem[_333] * ('cd', 164) / (997 * ('cd', 164)) + (1000 * mem[_333 + 32])) <= uint128(('cd', 164)):
                  revert with 0, 'amountOut < checkAmount'
              uint128(stor7.field_0) = uint128(997 * mem[_333] * ('cd', 164) / (997 * ('cd', 164)) + (1000 * mem[_333 + 32]))
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = bool(cd[4])
              mem[mem[64] + 68] = cd[36]
              if cd[4]:
                  mem[mem[64] + 100] = 4295128740
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _525 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_525]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_525] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_525] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_525] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _526 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_526]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_526] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_526] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_526] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
      else:
          mem[mem[64] + 4] = addr(('cd', 164))
          require ('cd', 164) == bool(('cd', 164))
          mem[mem[64] + 36] = bool(('cd', 164))
          mem[mem[64] + 68] = ('cd', 164)
          require ('cd', 164) == ('signextend', 2, ('cd', ('add', 164, ('cd', 164))))
          mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 164, ('cd', 164))))
          require ('cd', 164) == ('cd', 164) % 16777216
          mem[mem[64] + 132] = ('cd', 164) % 16777216
          require ('cd', 164) == addr(('cd', 164))
          mem[mem[64] + 164] = addr(('cd', 164))
          require ext_code.size(stor3)
          static call stor3.0x4aeccb60 with:
                  gas gas_remaining wei
                 args addr(('cd', 164)), bool(('cd', 164)), ('cd', 164), ('signextend', 2, ('cd', ('add', 164, ('cd', 164)))), ('cd', 164) << 232, addr(('cd', 164))
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _349 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          require ('cd', 164) == uint128(('cd', 164))
          if mem[_349 + 16 len 16] <= uint128(('cd', 164)):
              revert with 0, 'amountOut < checkAmount'
          uint128(stor7.field_0) = mem[_349 + 16 len 16]
          uint8(stor2.field_0) = 1
          Mask(88, 0, stor2.field_8) = 0
          mem[mem[64] + 36] = bool(cd[4])
          mem[mem[64] + 68] = cd[36]
          if cd[4]:
              mem[mem[64] + 100] = 4295128740
              mem[mem[64] + 132] = 160
              mem[mem[64] + 164] = ('cd', 196).length
              mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 196] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x128acb08 with:
                   gas gas_remaining wei
                  args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              mem[mem[64] len 64] = ext_call.return_data[0 len 64]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 64
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _521 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_521]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_521] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_521] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_521] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
          else:
              mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
              mem[mem[64] + 132] = 160
              mem[mem[64] + 164] = ('cd', 196).length
              mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 196] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x128acb08 with:
                   gas gas_remaining wei
                  args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              mem[mem[64] len 64] = ext_call.return_data[0 len 64]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 64
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _522 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_522]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_522] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_522] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_522] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei

def unknown00000008() payable: 
  mem[64] = 96
  require calldata.size - 4 >=ΓÇ▓ 192
  require cd == bool(cd[4])
  require cd == addr(cd)
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require calldata.size + -cd >=ΓÇ▓ 288
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 164).length <= 18446744073709551615
  require cd('cd', 164).length + 36 <= calldata.size
  mem[0] = caller
  mem[32] = 1
  require stor1[caller]
  require ('cd', 132) <ΓÇ▓ calldata.size + -cd[132] - 35
  require cd[(cd('cd', 132) + 4)] <= 18446744073709551615
  require cd('cd', 132) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 132) + 4)])
  idx = 0
  while idx < cd[(cd('cd', 132) + 4)]:
      require cd[(cd('cd', 132) + (32 * idx) + 36)] <ΓÇ▓ calldata.size + -cd('cd', 132) - 131
      require calldata.size + -cd[(cd('cd', 132) + (32 * idx) + 36)] + -cd('cd', 132) - 36 >=ΓÇ▓ 96
      _310 = mem[64]
      require mem[64] + 96 <= 18446744073709551615 and mem[64] + 96 >= mem[64]
      mem[64] = mem[64] + 96
      mem[_310] = cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 36)]
      mem[_310 + 32] = cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]
      require cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] <= 18446744073709551615
      require cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 67 <ΓÇ▓ calldata.size
      require cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)] <= 18446744073709551615
      _311 = mem[64]
      require mem[64] + ceil32(cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)]) + 32
      mem[_311] = cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)]
      require cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)] + 68 <= calldata.size
      mem[_311 + 32 len cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)]] = call.data[cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 68 len cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)]]
      mem[_311 + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)] + 32] = 0
      mem[_310 + 64] = _311
      if cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 36)] > 1:
          require cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)] >=ΓÇ▓ 128
          _319 = mem[64]
          require mem[64] + 128 <= 18446744073709551615 and mem[64] + 128 >= mem[64]
          mem[64] = mem[64] + 128
          require mem[_311 + 32] == mem[_311 + 44 len 20]
          mem[_319] = mem[_311 + 32]
          require mem[_311 + 64] == mem[_311 + 76 len 20]
          mem[_319 + 32] = mem[_311 + 64]
          mem[_319 + 64] = mem[_311 + 96]
          mem[_319 + 96] = mem[_311 + 128]
          if 3 == cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 36)]:
              _334 = mem[_319 + 96]
              mem[mem[64] + 4] = mem[_319 + 96]
              require ext_code.size(stor5)
              static call stor5.0x7e54f092 with:
                      gas gas_remaining wei
                     args _334
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _351 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _355 = mem[_351]
              if 1 == mem[_351]:
                  if 0 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                      revert with 0, 'remainingMakerAmount < amount'
              else:
                  if mem[_351]:
                      _360 = mem[_319 + 32]
                      _361 = mem[_319]
                      mem[mem[64] + 4] = mem[_319 + 12 len 20]
                      require ext_code.size(addr(_360))
                      static call addr(_360).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_361)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _381 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _355 - 1 <= mem[_381]:
                          if _355 - 1 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_381] < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                  else:
                      _358 = mem[_319 + 64]
                      _363 = mem[_319 + 32]
                      _364 = mem[_319]
                      mem[mem[64] + 4] = mem[_319 + 12 len 20]
                      require ext_code.size(addr(_363))
                      static call addr(_363).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_364)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _382 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _358 <= mem[_382]:
                          if _358 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_382] < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
          else:
              _336 = mem[_319 + 96]
              mem[mem[64] + 4] = mem[_319 + 96]
              require ext_code.size(stor4)
              static call stor4.0x7e54f092 with:
                      gas gas_remaining wei
                     args _336
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _352 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _356 = mem[_352]
              if 1 == mem[_352]:
                  if 0 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                      revert with 0, 'remainingMakerAmount < amount'
              else:
                  if mem[_352]:
                      _366 = mem[_319 + 32]
                      _367 = mem[_319]
                      mem[mem[64] + 4] = mem[_319 + 12 len 20]
                      require ext_code.size(addr(_366))
                      static call addr(_366).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_367)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _384 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _356 - 1 <= mem[_384]:
                          if _356 - 1 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_384] < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                  else:
                      _359 = mem[_319 + 64]
                      _369 = mem[_319 + 32]
                      _370 = mem[_319]
                      mem[mem[64] + 4] = mem[_319 + 12 len 20]
                      require ext_code.size(addr(_369))
                      static call addr(_369).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_370)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _385 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _359 <= mem[_385]:
                          if _359 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_385] < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
      else:
          require cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 100)] + 36)] >=ΓÇ▓ 384
          _320 = mem[64]
          require mem[64] + 384 >= mem[64] and mem[64] + 384 <= 18446744073709551615
          mem[64] = mem[64] + 384
          require mem[_311 + 32] == mem[_311 + 44 len 20]
          mem[_320] = mem[_311 + 32]
          require mem[_311 + 64] == mem[_311 + 76 len 20]
          mem[_320 + 32] = mem[_311 + 64]
          require mem[_311 + 96] == mem[_311 + 112 len 16]
          mem[_320 + 64] = mem[_311 + 96]
          require mem[_311 + 128] == mem[_311 + 144 len 16]
          mem[_320 + 96] = mem[_311 + 128]
          require mem[_311 + 160] == mem[_311 + 176 len 16]
          mem[_320 + 128] = mem[_311 + 160]
          require mem[_311 + 192] == mem[_311 + 204 len 20]
          mem[_320 + 160] = mem[_311 + 192]
          require mem[_311 + 224] == mem[_311 + 236 len 20]
          mem[_320 + 192] = mem[_311 + 224]
          require mem[_311 + 256] == mem[_311 + 268 len 20]
          mem[_320 + 224] = mem[_311 + 256]
          require mem[_311 + 288] == mem[_311 + 300 len 20]
          mem[_320 + 256] = mem[_311 + 288]
          mem[_320 + 288] = mem[_311 + 320]
          require mem[_311 + 352] == mem[_311 + 376 len 8]
          mem[_320 + 320] = mem[_311 + 352]
          mem[_320 + 352] = mem[_311 + 384]
          mem[mem[64]] = 0x9548088900000000000000000000000000000000000000000000000000000000
          mem[mem[64] + 4] = mem[_320 + 12 len 20]
          mem[mem[64] + 36] = mem[_320 + 44 len 20]
          mem[mem[64] + 68] = mem[_320 + 80 len 16]
          mem[mem[64] + 100] = mem[_320 + 112 len 16]
          mem[mem[64] + 132] = mem[_320 + 144 len 16]
          mem[mem[64] + 164] = mem[_320 + 172 len 20]
          mem[mem[64] + 196] = mem[_320 + 204 len 20]
          mem[mem[64] + 228] = mem[_320 + 236 len 20]
          mem[mem[64] + 260] = mem[_320 + 268 len 20]
          mem[mem[64] + 292] = mem[_320 + 288]
          mem[mem[64] + 324] = mem[_320 + 344 len 8]
          mem[mem[64] + 356] = mem[_320 + 352]
          require ext_code.size(stor6)
          static call stor6.0x95480889 with:
                  gas gas_remaining wei
                 args mem[mem[64] + 4 len 384]
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _580 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          _581 = mem[64]
          require mem[64] + 96 <= 18446744073709551615 and mem[64] + 96 >= mem[64]
          mem[64] = mem[64] + 96
          mem[_581] = mem[_580]
          require mem[_580 + 32] == mem[_580 + 63 len 1]
          mem[_581 + 32] = mem[_580 + 32]
          require mem[_580 + 64] == mem[_580 + 80 len 16]
          mem[_581 + 64] = mem[_580 + 64]
          if mem[_581 + 63 len 1] != 1:
              if 0 < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                  revert with 0, 'remainingMakerAmount < amount'
          else:
              if not mem[_581 + 80 len 16]:
                  _587 = mem[_320 + 64]
                  _591 = mem[_320]
                  _592 = mem[_320 + 160]
                  mem[mem[64] + 4] = mem[_320 + 172 len 20]
                  require ext_code.size(addr(_591))
                  static call addr(_591).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_592)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _601 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if uint128(_587) <= mem[_601]:
                      if uint128(_587) < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
                  else:
                      if mem[_601] < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
              else:
                  _588 = mem[_581 + 64]
                  _589 = mem[_320 + 96]
                  _590 = mem[_320 + 64]
                  require mem[_320 + 112 len 16]
                  _594 = mem[_320]
                  _595 = mem[_320 + 160]
                  mem[mem[64] + 4] = mem[_320 + 172 len 20]
                  require ext_code.size(addr(_594))
                  static call addr(_594).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_595)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _603 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if uint128(_589 - _588) * uint128(_590) / uint128(_589) <= mem[_603]:
                      if uint128(_589 - _588) * uint128(_590) / uint128(_589) < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
                  else:
                      if mem[_603] < cd[(cd[(cd('cd', 132) + (32 * idx) + 36)] + cd('cd', 132) + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
      idx = idx + 1
      continue 
  require ('cd', 132).length == bool(('cd', 132).length)
  require ('cd', 132) == ('cd', 132) % 16777216
  require ('cd', 132) == addr(('cd', 132))
  if not ('cd', 132).length:
      if not ('cd', 132) % 16777216:
          require ('cd', 132) == bool(('cd', 132))
          require ext_code.size(addr(('cd', 132)))
          static call addr(('cd', 132)).getReserves() with:
                  gas gas_remaining wei
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _332 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          _339 = mem[_332]
          _340 = mem[_332 + 32]
          require mem[_332 + 64] == mem[_332 + 92 len 4]
          if ('cd', 132):
              require (997 * mem[_332 + 32]) - (997 * ('cd', 132))
              require ('cd', 132) == uint128(('cd', 132))
              if uint128((1000 * mem[_332] * ('cd', 132) / (997 * mem[_332 + 32]) - (997 * ('cd', 132))) + 1) >= uint128(('cd', 132)):
                  revert with 0, 'amountIn > checkAmount'
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = bool(cd[4])
              mem[mem[64] + 68] = -uint128((1000 * _339 * ('cd', 132) / (997 * _340) - (997 * ('cd', 132))) + 1)
              if cd[4]:
                  mem[mem[64] + 100] = 4295128740
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 164).length
                  mem[mem[64] + 196 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cduint128((1000 * _339 * ('cd', 132) / (997 * _340) - (997 * ('cd', 132))) + 1), 4295128740, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _517 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_517]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_517] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_517] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_517] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 164).length
                  mem[mem[64] + 196 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cduint128((1000 * _339 * ('cd', 132) / (997 * _340) - (997 * ('cd', 132))) + 1), 0xfffd8963efd1fc6a506488495d951d5263988d25, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _518 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_518]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_518] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_518] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_518] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
          else:
              require (997 * mem[_332]) - (997 * ('cd', 132))
              require ('cd', 132) == uint128(('cd', 132))
              if uint128((1000 * mem[_332 + 32] * ('cd', 132) / (997 * mem[_332]) - (997 * ('cd', 132))) + 1) >= uint128(('cd', 132)):
                  revert with 0, 'amountIn > checkAmount'
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = bool(cd[4])
              mem[mem[64] + 68] = -uint128((1000 * _340 * ('cd', 132) / (997 * _339) - (997 * ('cd', 132))) + 1)
              if cd[4]:
                  mem[mem[64] + 100] = 4295128740
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 164).length
                  mem[mem[64] + 196 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cduint128((1000 * _340 * ('cd', 132) / (997 * _339) - (997 * ('cd', 132))) + 1), 4295128740, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _519 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_519]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_519] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_519] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_519] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 164).length
                  mem[mem[64] + 196 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cduint128((1000 * _340 * ('cd', 132) / (997 * _339) - (997 * ('cd', 132))) + 1), 0xfffd8963efd1fc6a506488495d951d5263988d25, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _520 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_520]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_520] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_520] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_520] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
      else:
          mem[mem[64] + 4] = addr(('cd', 132))
          require ('cd', 132) == bool(('cd', 132))
          mem[mem[64] + 36] = bool(('cd', 132))
          mem[mem[64] + 68] = ('cd', 132)
          require ('cd', 132) == ('signextend', 2, ('cd', ('add', 164, ('cd', 132))))
          mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 164, ('cd', 132))))
          require ('cd', 132) == ('cd', 132) % 16777216
          mem[mem[64] + 132] = ('cd', 132) % 16777216
          require ('cd', 132) == addr(('cd', 132))
          mem[mem[64] + 164] = addr(('cd', 132))
          require ext_code.size(stor3)
          static call stor3.0x4aeccb60 with:
                  gas gas_remaining wei
                 args addr(('cd', 132)), bool(('cd', 132)), ('cd', 132), ('signextend', 2, ('cd', ('add', 164, ('cd', 132)))), ('cd', 132) << 232, addr(('cd', 132))
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _348 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          _353 = mem[_348]
          require ('cd', 132) == uint128(('cd', 132))
          if mem[_348 + 16 len 16] >= uint128(('cd', 132)):
              revert with 0, 'amountIn > checkAmount'
          uint8(stor2.field_0) = 1
          Mask(88, 0, stor2.field_8) = 0
          mem[mem[64] + 36] = bool(cd[4])
          mem[mem[64] + 68] = -uint128(_353)
          if cd[4]:
              mem[mem[64] + 100] = 4295128740
              mem[mem[64] + 132] = 160
              mem[mem[64] + 164] = ('cd', 164).length
              mem[mem[64] + 196 len ('cd', 164).length] = call.data[cd('cd', 164).length]
              mem[mem[64] + ('cd', 164).length + 196] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x128acb08 with:
                   gas gas_remaining wei
                  args addr(this.address), bool(cduint128(_353), 4295128740, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
              mem[mem[64] len 64] = ext_call.return_data[0 len 64]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 64
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _515 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_515]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_515] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_515] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_515] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
          else:
              mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
              mem[mem[64] + 132] = 160
              mem[mem[64] + 164] = ('cd', 164).length
              mem[mem[64] + 196 len ('cd', 164).length] = call.data[cd('cd', 164).length]
              mem[mem[64] + ('cd', 164).length + 196] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x128acb08 with:
                   gas gas_remaining wei
                  args addr(this.address), bool(cduint128(_353), 0xfffd8963efd1fc6a506488495d951d5263988d25, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
              mem[mem[64] len 64] = ext_call.return_data[0 len 64]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 64
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _516 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_516]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_516] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_516] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_516] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
  else:
      if not ('cd', 132) % 16777216:
          require ('cd', 132) == bool(('cd', 132))
          require ext_code.size(addr(('cd', 132)))
          static call addr(('cd', 132)).getReserves() with:
                  gas gas_remaining wei
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _333 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          _343 = mem[_333]
          _344 = mem[_333 + 32]
          require mem[_333 + 64] == mem[_333 + 92 len 4]
          if ('cd', 132):
              require (997 * ('cd', 132)) + (1000 * mem[_333])
              require ('cd', 132) == uint128(('cd', 132))
              if uint128(997 * mem[_333 + 32] * ('cd', 132) / (997 * ('cd', 132)) + (1000 * mem[_333])) <= uint128(('cd', 132)):
                  revert with 0, 'amountOut < checkAmount'
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = bool(cd[4])
              mem[mem[64] + 68] = -uint128(997 * _344 * ('cd', 132) / (997 * ('cd', 132)) + (1000 * _343))
              if cd[4]:
                  mem[mem[64] + 100] = 4295128740
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 164).length
                  mem[mem[64] + 196 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cduint128(997 * _344 * ('cd', 132) / (997 * ('cd', 132)) + (1000 * _343)), 4295128740, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _523 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_523]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_523] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_523] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_523] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 164).length
                  mem[mem[64] + 196 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cduint128(997 * _344 * ('cd', 132) / (997 * ('cd', 132)) + (1000 * _343)), 0xfffd8963efd1fc6a506488495d951d5263988d25, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _524 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_524]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_524] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_524] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_524] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
          else:
              require (997 * ('cd', 132)) + (1000 * mem[_333 + 32])
              require ('cd', 132) == uint128(('cd', 132))
              if uint128(997 * mem[_333] * ('cd', 132) / (997 * ('cd', 132)) + (1000 * mem[_333 + 32])) <= uint128(('cd', 132)):
                  revert with 0, 'amountOut < checkAmount'
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = bool(cd[4])
              mem[mem[64] + 68] = -uint128(997 * _343 * ('cd', 132) / (997 * ('cd', 132)) + (1000 * _344))
              if cd[4]:
                  mem[mem[64] + 100] = 4295128740
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 164).length
                  mem[mem[64] + 196 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cduint128(997 * _343 * ('cd', 132) / (997 * ('cd', 132)) + (1000 * _344)), 4295128740, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _525 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_525]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_525] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_525] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_525] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 164).length
                  mem[mem[64] + 196 len ('cd', 164).length] = call.data[cd('cd', 164).length]
                  mem[mem[64] + ('cd', 164).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cduint128(997 * _343 * ('cd', 132) / (997 * ('cd', 132)) + (1000 * _344)), 0xfffd8963efd1fc6a506488495d951d5263988d25, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _526 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_526]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_526] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_526] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_526] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
      else:
          mem[mem[64] + 4] = addr(('cd', 132))
          require ('cd', 132) == bool(('cd', 132))
          mem[mem[64] + 36] = bool(('cd', 132))
          mem[mem[64] + 68] = ('cd', 132)
          require ('cd', 132) == ('signextend', 2, ('cd', ('add', 164, ('cd', 132))))
          mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 164, ('cd', 132))))
          require ('cd', 132) == ('cd', 132) % 16777216
          mem[mem[64] + 132] = ('cd', 132) % 16777216
          require ('cd', 132) == addr(('cd', 132))
          mem[mem[64] + 164] = addr(('cd', 132))
          require ext_code.size(stor3)
          static call stor3.0x4aeccb60 with:
                  gas gas_remaining wei
                 args addr(('cd', 132)), bool(('cd', 132)), ('cd', 132), ('signextend', 2, ('cd', ('add', 164, ('cd', 132)))), ('cd', 132) << 232, addr(('cd', 132))
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _349 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          _354 = mem[_349]
          require ('cd', 132) == uint128(('cd', 132))
          if mem[_349 + 16 len 16] <= uint128(('cd', 132)):
              revert with 0, 'amountOut < checkAmount'
          uint8(stor2.field_0) = 1
          Mask(88, 0, stor2.field_8) = 0
          mem[mem[64] + 36] = bool(cd[4])
          mem[mem[64] + 68] = -uint128(_354)
          if cd[4]:
              mem[mem[64] + 100] = 4295128740
              mem[mem[64] + 132] = 160
              mem[mem[64] + 164] = ('cd', 164).length
              mem[mem[64] + 196 len ('cd', 164).length] = call.data[cd('cd', 164).length]
              mem[mem[64] + ('cd', 164).length + 196] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x128acb08 with:
                   gas gas_remaining wei
                  args addr(this.address), bool(cduint128(_354), 4295128740, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
              mem[mem[64] len 64] = ext_call.return_data[0 len 64]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 64
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _521 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_521]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_521] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_521] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_521] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
          else:
              mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
              mem[mem[64] + 132] = 160
              mem[mem[64] + 164] = ('cd', 164).length
              mem[mem[64] + 196 len ('cd', 164).length] = call.data[cd('cd', 164).length]
              mem[mem[64] + ('cd', 164).length + 196] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x128acb08 with:
                   gas gas_remaining wei
                  args addr(this.address), bool(cduint128(_354), 0xfffd8963efd1fc6a506488495d951d5263988d25, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
              mem[mem[64] len 64] = ext_call.return_data[0 len 64]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 64
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _522 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_522]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_522] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_522] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_522] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei

def unknown0000000e() payable: 
  mem[64] = 96
  require calldata.size - 4 >=ΓÇ▓ 224
  require cd == addr(cd)
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require calldata.size + -cd >=ΓÇ▓ 64
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 196).length <= 18446744073709551615
  require cd('cd', 196).length + 36 <= calldata.size
  mem[0] = caller
  mem[32] = 1
  require stor1[caller]
  require ('cd', 164).length <ΓÇ▓ calldata.size + -cd[164] - 35
  require cd[(cd('cd', 164).length + 4)] <= 18446744073709551615
  require cd('cd', 164).length + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 164).length + 4)])
  idx = 0
  while idx < cd[(cd('cd', 164).length + 4)]:
      require cd[(cd('cd', 164).length + (32 * idx) + 36)] <ΓÇ▓ calldata.size + -cd('cd', 164).length - 131
      require calldata.size + -cd[(cd('cd', 164).length + (32 * idx) + 36)] + -cd('cd', 164).length - 36 >=ΓÇ▓ 96
      _276 = mem[64]
      require mem[64] + 96 <= 18446744073709551615 and mem[64] + 96 >= mem[64]
      mem[64] = mem[64] + 96
      mem[_276] = cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 36)]
      mem[_276 + 32] = cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]
      require cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] <= 18446744073709551615
      require cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 67 <ΓÇ▓ calldata.size
      require cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)] <= 18446744073709551615
      _277 = mem[64]
      require mem[64] + ceil32(cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)]) + 32
      mem[_277] = cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)]
      require cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)] + 68 <= calldata.size
      mem[_277 + 32 len cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)]] = call.data[cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 68 len cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)]]
      mem[_277 + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)] + 32] = 0
      mem[_276 + 64] = _277
      if cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 36)] > 1:
          require cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)] >=ΓÇ▓ 128
          _284 = mem[64]
          require mem[64] + 128 <= 18446744073709551615 and mem[64] + 128 >= mem[64]
          mem[64] = mem[64] + 128
          require mem[_277 + 32] == mem[_277 + 44 len 20]
          mem[_284] = mem[_277 + 32]
          require mem[_277 + 64] == mem[_277 + 76 len 20]
          mem[_284 + 32] = mem[_277 + 64]
          mem[_284 + 64] = mem[_277 + 96]
          mem[_284 + 96] = mem[_277 + 128]
          if 3 == cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 36)]:
              _296 = mem[_284 + 96]
              mem[mem[64] + 4] = mem[_284 + 96]
              require ext_code.size(stor5)
              static call stor5.0x7e54f092 with:
                      gas gas_remaining wei
                     args _296
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _308 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _311 = mem[_308]
              if 1 == mem[_308]:
                  if 0 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                      revert with 0, 'remainingMakerAmount < amount'
              else:
                  if mem[_308]:
                      _316 = mem[_284 + 32]
                      _317 = mem[_284]
                      mem[mem[64] + 4] = mem[_284 + 12 len 20]
                      require ext_code.size(addr(_316))
                      static call addr(_316).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_317)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _337 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _311 - 1 <= mem[_337]:
                          if _311 - 1 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_337] < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                  else:
                      _314 = mem[_284 + 64]
                      _319 = mem[_284 + 32]
                      _320 = mem[_284]
                      mem[mem[64] + 4] = mem[_284 + 12 len 20]
                      require ext_code.size(addr(_319))
                      static call addr(_319).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_320)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _338 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _314 <= mem[_338]:
                          if _314 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_338] < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
          else:
              _298 = mem[_284 + 96]
              mem[mem[64] + 4] = mem[_284 + 96]
              require ext_code.size(stor4)
              static call stor4.0x7e54f092 with:
                      gas gas_remaining wei
                     args _298
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _309 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _312 = mem[_309]
              if 1 == mem[_309]:
                  if 0 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                      revert with 0, 'remainingMakerAmount < amount'
              else:
                  if mem[_309]:
                      _322 = mem[_284 + 32]
                      _323 = mem[_284]
                      mem[mem[64] + 4] = mem[_284 + 12 len 20]
                      require ext_code.size(addr(_322))
                      static call addr(_322).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_323)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _340 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _312 - 1 <= mem[_340]:
                          if _312 - 1 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_340] < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                  else:
                      _315 = mem[_284 + 64]
                      _325 = mem[_284 + 32]
                      _326 = mem[_284]
                      mem[mem[64] + 4] = mem[_284 + 12 len 20]
                      require ext_code.size(addr(_325))
                      static call addr(_325).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_326)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _341 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _315 <= mem[_341]:
                          if _315 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_341] < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
      else:
          require cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)] >=ΓÇ▓ 384
          _285 = mem[64]
          require mem[64] + 384 >= mem[64] and mem[64] + 384 <= 18446744073709551615
          mem[64] = mem[64] + 384
          require mem[_277 + 32] == mem[_277 + 44 len 20]
          mem[_285] = mem[_277 + 32]
          require mem[_277 + 64] == mem[_277 + 76 len 20]
          mem[_285 + 32] = mem[_277 + 64]
          require mem[_277 + 96] == mem[_277 + 112 len 16]
          mem[_285 + 64] = mem[_277 + 96]
          require mem[_277 + 128] == mem[_277 + 144 len 16]
          mem[_285 + 96] = mem[_277 + 128]
          require mem[_277 + 160] == mem[_277 + 176 len 16]
          mem[_285 + 128] = mem[_277 + 160]
          require mem[_277 + 192] == mem[_277 + 204 len 20]
          mem[_285 + 160] = mem[_277 + 192]
          require mem[_277 + 224] == mem[_277 + 236 len 20]
          mem[_285 + 192] = mem[_277 + 224]
          require mem[_277 + 256] == mem[_277 + 268 len 20]
          mem[_285 + 224] = mem[_277 + 256]
          require mem[_277 + 288] == mem[_277 + 300 len 20]
          mem[_285 + 256] = mem[_277 + 288]
          mem[_285 + 288] = mem[_277 + 320]
          require mem[_277 + 352] == mem[_277 + 376 len 8]
          mem[_285 + 320] = mem[_277 + 352]
          mem[_285 + 352] = mem[_277 + 384]
          mem[mem[64]] = 0x9548088900000000000000000000000000000000000000000000000000000000
          mem[mem[64] + 4] = mem[_285 + 12 len 20]
          mem[mem[64] + 36] = mem[_285 + 44 len 20]
          mem[mem[64] + 68] = mem[_285 + 80 len 16]
          mem[mem[64] + 100] = mem[_285 + 112 len 16]
          mem[mem[64] + 132] = mem[_285 + 144 len 16]
          mem[mem[64] + 164] = mem[_285 + 172 len 20]
          mem[mem[64] + 196] = mem[_285 + 204 len 20]
          mem[mem[64] + 228] = mem[_285 + 236 len 20]
          mem[mem[64] + 260] = mem[_285 + 268 len 20]
          mem[mem[64] + 292] = mem[_285 + 288]
          mem[mem[64] + 324] = mem[_285 + 344 len 8]
          mem[mem[64] + 356] = mem[_285 + 352]
          require ext_code.size(stor6)
          static call stor6.0x95480889 with:
                  gas gas_remaining wei
                 args mem[mem[64] + 4 len 384]
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _503 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          _513 = mem[64]
          require mem[64] + 96 <= 18446744073709551615 and mem[64] + 96 >= mem[64]
          mem[64] = mem[64] + 96
          mem[_513] = mem[_503]
          require mem[_503 + 32] == mem[_503 + 63 len 1]
          mem[_513 + 32] = mem[_503 + 32]
          require mem[_503 + 64] == mem[_503 + 80 len 16]
          mem[_513 + 64] = mem[_503 + 64]
          if mem[_513 + 63 len 1] != 1:
              if 0 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                  revert with 0, 'remainingMakerAmount < amount'
          else:
              if not mem[_513 + 80 len 16]:
                  _519 = mem[_285 + 64]
                  _523 = mem[_285]
                  _524 = mem[_285 + 160]
                  mem[mem[64] + 4] = mem[_285 + 172 len 20]
                  require ext_code.size(addr(_523))
                  static call addr(_523).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_524)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _533 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if uint128(_519) <= mem[_533]:
                      if uint128(_519) < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
                  else:
                      if mem[_533] < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
              else:
                  _520 = mem[_513 + 64]
                  _521 = mem[_285 + 96]
                  _522 = mem[_285 + 64]
                  require mem[_285 + 112 len 16]
                  _526 = mem[_285]
                  _527 = mem[_285 + 160]
                  mem[mem[64] + 4] = mem[_285 + 172 len 20]
                  require ext_code.size(addr(_526))
                  static call addr(_526).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_527)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _535 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if uint128(_521 - _520) * uint128(_522) / uint128(_521) <= mem[_535]:
                      if uint128(_521 - _520) * uint128(_522) / uint128(_521) < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
                  else:
                      if mem[_535] < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
      idx = idx + 1
      continue 
  require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 35
  require cd[(cd('cd', 164) + 4)] <= 18446744073709551615
  require cd('cd', 164) + 36 <=ΓÇ▓ calldata.size - (192 * cd[(cd('cd', 164) + 4)])
  require 0 < cd[(cd('cd', 164) + 4)]
  require cd[(cd('cd', 164) + 164)] == cd[(cd('cd', 164) + 164)] % 16777216
  require cd[(cd('cd', 164) + 36)] == addr(cd[(cd('cd', 164) + 36)])
  if not cd[(cd('cd', 164) + 164)] % 16777216:
      require cd[(cd('cd', 164) + 68)] == bool(cd[(cd('cd', 164) + 68)])
      require ext_code.size(addr(cd[(cd('cd', 164) + 36)]))
      static call addr(cd[(cd('cd', 164) + 36)]).getReserves() with:
              gas gas_remaining wei
      mem[mem[64] len 96] = ext_call.return_data[0 len 96]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      _294 = mem[64]
      mem[64] = mem[64] + ceil32(return_data.size)
      require return_data.size >=ΓÇ▓ 96
      _301 = mem[_294]
      _302 = mem[_294 + 32]
      require mem[_294 + 64] == mem[_294 + 92 len 4]
      if cd[(cd('cd', 164) + 68)]:
          require (997 * mem[_294 + 32]) - (997 * cd[(cd('cd', 164) + 100)])
          require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 35
          require cd[(cd('cd', 164) + 4)] <= 18446744073709551615
          require cd('cd', 164) + 36 <=ΓÇ▓ calldata.size - (192 * cd[(cd('cd', 164) + 4)])
          require 1 < cd[(cd('cd', 164) + 4)]
          require cd[(cd('cd', 164) + 356)] == cd[(cd('cd', 164) + 356)] % 16777216
          require cd[(cd('cd', 164) + 228)] == addr(cd[(cd('cd', 164) + 228)])
          if not cd[(cd('cd', 164) + 356)] % 16777216:
              require cd[(cd('cd', 164) + 260)] == bool(cd[(cd('cd', 164) + 260)])
              require ext_code.size(addr(cd[(cd('cd', 164) + 228)]))
              static call addr(cd[(cd('cd', 164) + 228)]).getReserves() with:
                      gas gas_remaining wei
              mem[mem[64] len 96] = ext_call.return_data[0 len 96]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _387 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 96
              require mem[_387 + 64] == mem[_387 + 92 len 4]
              if cd[(cd('cd', 164) + 260)]:
                  require (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_387])
                  if uint128(997 * mem[_387 + 32] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_387])) <= uint128((1000 * _301 * cd[(cd('cd', 164) + 100)] / (997 * _302) - (997 * cd[(cd('cd', 164) + 100)])) + 1):
                      revert with 0, 'amountIn < amountOut'
                  uint128(stor7.field_0) = uint128((1000 * _301 * cd[(cd('cd', 164) + 100)] / (997 * _302) - (997 * cd[(cd('cd', 164) + 100)])) + 1)
                  uint128(stor7.field_128) = 0
                  uint128(stor7.field_128) = uint128(997 * mem[_387 + 32] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_387]))
                  uint8(stor2.field_0) = 1
                  Mask(88, 0, stor2.field_8) = 0
                  mem[mem[64] + 36] = cd[36]
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = ('cd', 196).length
                  mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 164] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x22c0d9f with:
                       gas gas_remaining wei
                      args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _476 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_476]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_476] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_476] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_476] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  require (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_387 + 32])
                  if uint128(997 * mem[_387] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_387 + 32])) <= uint128((1000 * _301 * cd[(cd('cd', 164) + 100)] / (997 * _302) - (997 * cd[(cd('cd', 164) + 100)])) + 1):
                      revert with 0, 'amountIn < amountOut'
                  uint128(stor7.field_0) = uint128((1000 * _301 * cd[(cd('cd', 164) + 100)] / (997 * _302) - (997 * cd[(cd('cd', 164) + 100)])) + 1)
                  uint128(stor7.field_128) = 0
                  uint128(stor7.field_128) = uint128(997 * mem[_387] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_387 + 32]))
                  uint8(stor2.field_0) = 1
                  Mask(88, 0, stor2.field_8) = 0
                  mem[mem[64] + 36] = cd[36]
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = ('cd', 196).length
                  mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 164] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x22c0d9f with:
                       gas gas_remaining wei
                      args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _477 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_477]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_477] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_477] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_477] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
          else:
              mem[mem[64] + 4] = addr(cd[(cd('cd', 164) + 228)])
              require cd[(cd('cd', 164) + 260)] == bool(cd[(cd('cd', 164) + 260)])
              mem[mem[64] + 36] = bool(cd[(cd('cd', 164) + 260)])
              mem[mem[64] + 68] = cd[(cd('cd', 164) + 292)]
              require cd[(cd('cd', 164) + 324)] == ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
              mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
              require cd[(cd('cd', 164) + 356)] == cd[(cd('cd', 164) + 356)] % 16777216
              mem[mem[64] + 132] = cd[(cd('cd', 164) + 356)] % 16777216
              require cd[(cd('cd', 164) + 388)] == addr(cd[(cd('cd', 164) + 388)])
              mem[mem[64] + 164] = addr(cd[(cd('cd', 164) + 388)])
              require ext_code.size(stor3)
              static call stor3.0x4aeccb60 with:
                      gas gas_remaining wei
                     args addr(cd[(cd('cd', 164) + 228)]), bool(cd[(cd('cd', 164) + 260)]), cd[(cd('cd', 164) + 292)], ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164)))))), cd[(cd('cd', 164) + 356)] << 232, addr(cd[(cd('cd', 164) + 388)])
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _403 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              if mem[_403 + 16 len 16] <= uint128((1000 * _301 * cd[(cd('cd', 164) + 100)] / (997 * _302) - (997 * cd[(cd('cd', 164) + 100)])) + 1):
                  revert with 0, 'amountIn < amountOut'
              uint128(stor7.field_0) = uint128((1000 * _301 * cd[(cd('cd', 164) + 100)] / (997 * _302) - (997 * cd[(cd('cd', 164) + 100)])) + 1)
              uint128(stor7.field_128) = 0
              uint128(stor7.field_128) = mem[_403 + 16 len 16]
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = cd[36]
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = ('cd', 196).length
              mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 164] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x22c0d9f with:
                   gas gas_remaining wei
                  args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _475 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_475]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_475] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_475] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_475] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
      else:
          require (997 * mem[_294]) - (997 * cd[(cd('cd', 164) + 100)])
          require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 35
          require cd[(cd('cd', 164) + 4)] <= 18446744073709551615
          require cd('cd', 164) + 36 <=ΓÇ▓ calldata.size - (192 * cd[(cd('cd', 164) + 4)])
          require 1 < cd[(cd('cd', 164) + 4)]
          require cd[(cd('cd', 164) + 356)] == cd[(cd('cd', 164) + 356)] % 16777216
          require cd[(cd('cd', 164) + 228)] == addr(cd[(cd('cd', 164) + 228)])
          if not cd[(cd('cd', 164) + 356)] % 16777216:
              require cd[(cd('cd', 164) + 260)] == bool(cd[(cd('cd', 164) + 260)])
              require ext_code.size(addr(cd[(cd('cd', 164) + 228)]))
              static call addr(cd[(cd('cd', 164) + 228)]).getReserves() with:
                      gas gas_remaining wei
              mem[mem[64] len 96] = ext_call.return_data[0 len 96]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _388 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 96
              require mem[_388 + 64] == mem[_388 + 92 len 4]
              if cd[(cd('cd', 164) + 260)]:
                  require (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_388])
                  if uint128(997 * mem[_388 + 32] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_388])) <= uint128((1000 * _302 * cd[(cd('cd', 164) + 100)] / (997 * _301) - (997 * cd[(cd('cd', 164) + 100)])) + 1):
                      revert with 0, 'amountIn < amountOut'
                  uint128(stor7.field_0) = uint128((1000 * _302 * cd[(cd('cd', 164) + 100)] / (997 * _301) - (997 * cd[(cd('cd', 164) + 100)])) + 1)
                  uint128(stor7.field_128) = 0
                  uint128(stor7.field_128) = uint128(997 * mem[_388 + 32] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_388]))
                  uint8(stor2.field_0) = 1
                  Mask(88, 0, stor2.field_8) = 0
                  mem[mem[64] + 36] = cd[36]
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = ('cd', 196).length
                  mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 164] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x22c0d9f with:
                       gas gas_remaining wei
                      args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _479 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_479]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_479] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_479] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_479] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  require (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_388 + 32])
                  if uint128(997 * mem[_388] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_388 + 32])) <= uint128((1000 * _302 * cd[(cd('cd', 164) + 100)] / (997 * _301) - (997 * cd[(cd('cd', 164) + 100)])) + 1):
                      revert with 0, 'amountIn < amountOut'
                  uint128(stor7.field_0) = uint128((1000 * _302 * cd[(cd('cd', 164) + 100)] / (997 * _301) - (997 * cd[(cd('cd', 164) + 100)])) + 1)
                  uint128(stor7.field_128) = 0
                  uint128(stor7.field_128) = uint128(997 * mem[_388] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_388 + 32]))
                  uint8(stor2.field_0) = 1
                  Mask(88, 0, stor2.field_8) = 0
                  mem[mem[64] + 36] = cd[36]
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = ('cd', 196).length
                  mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 164] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x22c0d9f with:
                       gas gas_remaining wei
                      args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _480 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_480]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_480] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_480] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_480] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
          else:
              mem[mem[64] + 4] = addr(cd[(cd('cd', 164) + 228)])
              require cd[(cd('cd', 164) + 260)] == bool(cd[(cd('cd', 164) + 260)])
              mem[mem[64] + 36] = bool(cd[(cd('cd', 164) + 260)])
              mem[mem[64] + 68] = cd[(cd('cd', 164) + 292)]
              require cd[(cd('cd', 164) + 324)] == ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
              mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
              require cd[(cd('cd', 164) + 356)] == cd[(cd('cd', 164) + 356)] % 16777216
              mem[mem[64] + 132] = cd[(cd('cd', 164) + 356)] % 16777216
              require cd[(cd('cd', 164) + 388)] == addr(cd[(cd('cd', 164) + 388)])
              mem[mem[64] + 164] = addr(cd[(cd('cd', 164) + 388)])
              require ext_code.size(stor3)
              static call stor3.0x4aeccb60 with:
                      gas gas_remaining wei
                     args addr(cd[(cd('cd', 164) + 228)]), bool(cd[(cd('cd', 164) + 260)]), cd[(cd('cd', 164) + 292)], ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164)))))), cd[(cd('cd', 164) + 356)] << 232, addr(cd[(cd('cd', 164) + 388)])
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _404 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              if mem[_404 + 16 len 16] <= uint128((1000 * _302 * cd[(cd('cd', 164) + 100)] / (997 * _301) - (997 * cd[(cd('cd', 164) + 100)])) + 1):
                  revert with 0, 'amountIn < amountOut'
              uint128(stor7.field_0) = uint128((1000 * _302 * cd[(cd('cd', 164) + 100)] / (997 * _301) - (997 * cd[(cd('cd', 164) + 100)])) + 1)
              uint128(stor7.field_128) = 0
              uint128(stor7.field_128) = mem[_404 + 16 len 16]
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = cd[36]
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = ('cd', 196).length
              mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 164] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x22c0d9f with:
                   gas gas_remaining wei
                  args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _478 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_478]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_478] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_478] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_478] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
  else:
      mem[mem[64] + 4] = addr(cd[(cd('cd', 164) + 36)])
      require cd[(cd('cd', 164) + 68)] == bool(cd[(cd('cd', 164) + 68)])
      mem[mem[64] + 36] = bool(cd[(cd('cd', 164) + 68)])
      mem[mem[64] + 68] = cd[(cd('cd', 164) + 100)]
      require cd[(cd('cd', 164) + 132)] == ('signextend', 2, ('cd', ('add', 132, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
      mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 132, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
      require cd[(cd('cd', 164) + 164)] == cd[(cd('cd', 164) + 164)] % 16777216
      mem[mem[64] + 132] = cd[(cd('cd', 164) + 164)] % 16777216
      require cd[(cd('cd', 164) + 196)] == addr(cd[(cd('cd', 164) + 196)])
      mem[mem[64] + 164] = addr(cd[(cd('cd', 164) + 196)])
      require ext_code.size(stor3)
      static call stor3.0x4aeccb60 with:
              gas gas_remaining wei
             args addr(cd[(cd('cd', 164) + 36)]), bool(cd[(cd('cd', 164) + 68)]), cd[(cd('cd', 164) + 100)], ('signextend', 2, ('cd', ('add', 132, ('cd', 164), ('cd', ('add', 36, ('cd', 164)))))), cd[(cd('cd', 164) + 164)] << 232, addr(cd[(cd('cd', 164) + 196)])
      mem[mem[64]] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      _306 = mem[64]
      mem[64] = mem[64] + ceil32(return_data.size)
      require return_data.size >=ΓÇ▓ 32
      _310 = mem[_306]
      require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 35
      require cd[(cd('cd', 164) + 4)] <= 18446744073709551615
      require cd('cd', 164) + 36 <=ΓÇ▓ calldata.size - (192 * cd[(cd('cd', 164) + 4)])
      require 1 < cd[(cd('cd', 164) + 4)]
      require cd[(cd('cd', 164) + 356)] == cd[(cd('cd', 164) + 356)] % 16777216
      require cd[(cd('cd', 164) + 228)] == addr(cd[(cd('cd', 164) + 228)])
      if not cd[(cd('cd', 164) + 356)] % 16777216:
          require cd[(cd('cd', 164) + 260)] == bool(cd[(cd('cd', 164) + 260)])
          require ext_code.size(addr(cd[(cd('cd', 164) + 228)]))
          static call addr(cd[(cd('cd', 164) + 228)]).getReserves() with:
                  gas gas_remaining wei
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _386 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          require mem[_386 + 64] == mem[_386 + 92 len 4]
          if cd[(cd('cd', 164) + 260)]:
              require (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_386])
              if uint128(997 * mem[_386 + 32] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_386])) <= uint128(_310):
                  revert with 0, 'amountIn < amountOut'
              uint128(stor7.field_0) = uint128(_310)
              uint128(stor7.field_128) = 0
              uint128(stor7.field_128) = uint128(997 * mem[_386 + 32] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_386]))
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = cd[36]
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = ('cd', 196).length
              mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 164] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x22c0d9f with:
                   gas gas_remaining wei
                  args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _473 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_473]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_473] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_473] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_473] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
          else:
              require (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_386 + 32])
              if uint128(997 * mem[_386] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_386 + 32])) <= uint128(_310):
                  revert with 0, 'amountIn < amountOut'
              uint128(stor7.field_0) = uint128(_310)
              uint128(stor7.field_128) = 0
              uint128(stor7.field_128) = uint128(997 * mem[_386] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_386 + 32]))
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = cd[36]
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = ('cd', 196).length
              mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 164] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x22c0d9f with:
                   gas gas_remaining wei
                  args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _474 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_474]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_474] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_474] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_474] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
      else:
          mem[mem[64] + 4] = addr(cd[(cd('cd', 164) + 228)])
          require cd[(cd('cd', 164) + 260)] == bool(cd[(cd('cd', 164) + 260)])
          mem[mem[64] + 36] = bool(cd[(cd('cd', 164) + 260)])
          mem[mem[64] + 68] = cd[(cd('cd', 164) + 292)]
          require cd[(cd('cd', 164) + 324)] == ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
          mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
          require cd[(cd('cd', 164) + 356)] == cd[(cd('cd', 164) + 356)] % 16777216
          mem[mem[64] + 132] = cd[(cd('cd', 164) + 356)] % 16777216
          require cd[(cd('cd', 164) + 388)] == addr(cd[(cd('cd', 164) + 388)])
          mem[mem[64] + 164] = addr(cd[(cd('cd', 164) + 388)])
          require ext_code.size(stor3)
          static call stor3.0x4aeccb60 with:
                  gas gas_remaining wei
                 args addr(cd[(cd('cd', 164) + 228)]), bool(cd[(cd('cd', 164) + 260)]), cd[(cd('cd', 164) + 292)], ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164)))))), cd[(cd('cd', 164) + 356)] << 232, addr(cd[(cd('cd', 164) + 388)])
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _402 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          if mem[_402 + 16 len 16] <= uint128(_310):
              revert with 0, 'amountIn < amountOut'
          uint128(stor7.field_0) = uint128(_310)
          uint128(stor7.field_128) = 0
          uint128(stor7.field_128) = mem[_402 + 16 len 16]
          uint8(stor2.field_0) = 1
          Mask(88, 0, stor2.field_8) = 0
          mem[mem[64] + 36] = cd[36]
          mem[mem[64] + 68] = this.address
          mem[mem[64] + 100] = 128
          mem[mem[64] + 132] = ('cd', 196).length
          mem[mem[64] + 164 len ('cd', 196).length] = call.data[cd('cd', 196).length]
          mem[mem[64] + ('cd', 196).length + 164] = 0
          require ext_code.size(addr(cd))
          call addr(cd).0x22c0d9f with:
               gas gas_remaining wei
              args cdaddr(this.address), Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          Mask(96, 0, stor2.field_0) = 0
          mem[mem[64] + 4] = this.address
          require ext_code.size(addr(cd))
          static call addr(cd).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(this.address)
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _472 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          call cdaddress to, uint256 tokens) with:
               gas gas_remaining wei
              args addr(stor2.field_0), mem[_472]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          if cd * mem[_472] <= 10000 * block.gasprice:
              revert with 0, 'earned.sub(gasUser) le zero'
          if call.value:
              if (cd * mem[_472] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                  call block.coinbase with:
                     value (cd * mem[_472] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                       gas gas_remaining wei
              else:
                  call block.coinbase with:
                     value eth.balance(this.address) wei
                       gas gas_remaining wei

def unknown00000004() payable: 
  mem[64] = 96
  require calldata.size - 4 >=ΓÇ▓ 224
  require cd == bool(cd[4])
  require cd == addr(cd)
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require calldata.size + -cd >=ΓÇ▓ 64
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 196).length <= 18446744073709551615
  require cd('cd', 196).length + 36 <= calldata.size
  mem[0] = caller
  mem[32] = 1
  require stor1[caller]
  require ('cd', 164).length <ΓÇ▓ calldata.size + -cd[164] - 35
  require cd[(cd('cd', 164).length + 4)] <= 18446744073709551615
  require cd('cd', 164).length + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 164).length + 4)])
  idx = 0
  while idx < cd[(cd('cd', 164).length + 4)]:
      require cd[(cd('cd', 164).length + (32 * idx) + 36)] <ΓÇ▓ calldata.size + -cd('cd', 164).length - 131
      require calldata.size + -cd[(cd('cd', 164).length + (32 * idx) + 36)] + -cd('cd', 164).length - 36 >=ΓÇ▓ 96
      _402 = mem[64]
      require mem[64] + 96 <= 18446744073709551615 and mem[64] + 96 >= mem[64]
      mem[64] = mem[64] + 96
      mem[_402] = cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 36)]
      mem[_402 + 32] = cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]
      require cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] <= 18446744073709551615
      require cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 67 <ΓÇ▓ calldata.size
      require cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)] <= 18446744073709551615
      _403 = mem[64]
      require mem[64] + ceil32(cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)]) + 32
      mem[_403] = cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)]
      require cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)] + 68 <= calldata.size
      mem[_403 + 32 len cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)]] = call.data[cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 68 len cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)]]
      mem[_403 + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)] + 32] = 0
      mem[_402 + 64] = _403
      if cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 36)] > 1:
          require cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)] >=ΓÇ▓ 128
          _410 = mem[64]
          require mem[64] + 128 <= 18446744073709551615 and mem[64] + 128 >= mem[64]
          mem[64] = mem[64] + 128
          require mem[_403 + 32] == mem[_403 + 44 len 20]
          mem[_410] = mem[_403 + 32]
          require mem[_403 + 64] == mem[_403 + 76 len 20]
          mem[_410 + 32] = mem[_403 + 64]
          mem[_410 + 64] = mem[_403 + 96]
          mem[_410 + 96] = mem[_403 + 128]
          if 3 == cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 36)]:
              _422 = mem[_410 + 96]
              mem[mem[64] + 4] = mem[_410 + 96]
              require ext_code.size(stor5)
              static call stor5.0x7e54f092 with:
                      gas gas_remaining wei
                     args _422
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _434 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _437 = mem[_434]
              if 1 == mem[_434]:
                  if 0 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                      revert with 0, 'remainingMakerAmount < amount'
              else:
                  if mem[_434]:
                      _442 = mem[_410 + 32]
                      _443 = mem[_410]
                      mem[mem[64] + 4] = mem[_410 + 12 len 20]
                      require ext_code.size(addr(_442))
                      static call addr(_442).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_443)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _463 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _437 - 1 <= mem[_463]:
                          if _437 - 1 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_463] < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                  else:
                      _440 = mem[_410 + 64]
                      _445 = mem[_410 + 32]
                      _446 = mem[_410]
                      mem[mem[64] + 4] = mem[_410 + 12 len 20]
                      require ext_code.size(addr(_445))
                      static call addr(_445).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_446)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _464 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _440 <= mem[_464]:
                          if _440 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_464] < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
          else:
              _424 = mem[_410 + 96]
              mem[mem[64] + 4] = mem[_410 + 96]
              require ext_code.size(stor4)
              static call stor4.0x7e54f092 with:
                      gas gas_remaining wei
                     args _424
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _435 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _438 = mem[_435]
              if 1 == mem[_435]:
                  if 0 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                      revert with 0, 'remainingMakerAmount < amount'
              else:
                  if mem[_435]:
                      _448 = mem[_410 + 32]
                      _449 = mem[_410]
                      mem[mem[64] + 4] = mem[_410 + 12 len 20]
                      require ext_code.size(addr(_448))
                      static call addr(_448).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_449)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _466 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _438 - 1 <= mem[_466]:
                          if _438 - 1 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_466] < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                  else:
                      _441 = mem[_410 + 64]
                      _451 = mem[_410 + 32]
                      _452 = mem[_410]
                      mem[mem[64] + 4] = mem[_410 + 12 len 20]
                      require ext_code.size(addr(_451))
                      static call addr(_451).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_452)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _467 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if _441 <= mem[_467]:
                          if _441 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
                      else:
                          if mem[_467] < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                              revert with 0, 'remainingMakerAmount < amount'
      else:
          require cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 100)] + 36)] >=ΓÇ▓ 384
          _411 = mem[64]
          require mem[64] + 384 >= mem[64] and mem[64] + 384 <= 18446744073709551615
          mem[64] = mem[64] + 384
          require mem[_403 + 32] == mem[_403 + 44 len 20]
          mem[_411] = mem[_403 + 32]
          require mem[_403 + 64] == mem[_403 + 76 len 20]
          mem[_411 + 32] = mem[_403 + 64]
          require mem[_403 + 96] == mem[_403 + 112 len 16]
          mem[_411 + 64] = mem[_403 + 96]
          require mem[_403 + 128] == mem[_403 + 144 len 16]
          mem[_411 + 96] = mem[_403 + 128]
          require mem[_403 + 160] == mem[_403 + 176 len 16]
          mem[_411 + 128] = mem[_403 + 160]
          require mem[_403 + 192] == mem[_403 + 204 len 20]
          mem[_411 + 160] = mem[_403 + 192]
          require mem[_403 + 224] == mem[_403 + 236 len 20]
          mem[_411 + 192] = mem[_403 + 224]
          require mem[_403 + 256] == mem[_403 + 268 len 20]
          mem[_411 + 224] = mem[_403 + 256]
          require mem[_403 + 288] == mem[_403 + 300 len 20]
          mem[_411 + 256] = mem[_403 + 288]
          mem[_411 + 288] = mem[_403 + 320]
          require mem[_403 + 352] == mem[_403 + 376 len 8]
          mem[_411 + 320] = mem[_403 + 352]
          mem[_411 + 352] = mem[_403 + 384]
          mem[mem[64]] = 0x9548088900000000000000000000000000000000000000000000000000000000
          mem[mem[64] + 4] = mem[_411 + 12 len 20]
          mem[mem[64] + 36] = mem[_411 + 44 len 20]
          mem[mem[64] + 68] = mem[_411 + 80 len 16]
          mem[mem[64] + 100] = mem[_411 + 112 len 16]
          mem[mem[64] + 132] = mem[_411 + 144 len 16]
          mem[mem[64] + 164] = mem[_411 + 172 len 20]
          mem[mem[64] + 196] = mem[_411 + 204 len 20]
          mem[mem[64] + 228] = mem[_411 + 236 len 20]
          mem[mem[64] + 260] = mem[_411 + 268 len 20]
          mem[mem[64] + 292] = mem[_411 + 288]
          mem[mem[64] + 324] = mem[_411 + 344 len 8]
          mem[mem[64] + 356] = mem[_411 + 352]
          require ext_code.size(stor6)
          static call stor6.0x95480889 with:
                  gas gas_remaining wei
                 args mem[mem[64] + 4 len 384]
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _728 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          _729 = mem[64]
          require mem[64] + 96 <= 18446744073709551615 and mem[64] + 96 >= mem[64]
          mem[64] = mem[64] + 96
          mem[_729] = mem[_728]
          require mem[_728 + 32] == mem[_728 + 63 len 1]
          mem[_729 + 32] = mem[_728 + 32]
          require mem[_728 + 64] == mem[_728 + 80 len 16]
          mem[_729 + 64] = mem[_728 + 64]
          if mem[_729 + 63 len 1] != 1:
              if 0 < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                  revert with 0, 'remainingMakerAmount < amount'
          else:
              if not mem[_729 + 80 len 16]:
                  _771 = mem[_411 + 64]
                  _775 = mem[_411]
                  _776 = mem[_411 + 160]
                  mem[mem[64] + 4] = mem[_411 + 172 len 20]
                  require ext_code.size(addr(_775))
                  static call addr(_775).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_776)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _785 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if uint128(_771) <= mem[_785]:
                      if uint128(_771) < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
                  else:
                      if mem[_785] < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
              else:
                  _772 = mem[_729 + 64]
                  _773 = mem[_411 + 96]
                  _774 = mem[_411 + 64]
                  require mem[_411 + 112 len 16]
                  _778 = mem[_411]
                  _779 = mem[_411 + 160]
                  mem[mem[64] + 4] = mem[_411 + 172 len 20]
                  require ext_code.size(addr(_778))
                  static call addr(_778).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_779)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _787 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if uint128(_773 - _772) * uint128(_774) / uint128(_773) <= mem[_787]:
                      if uint128(_773 - _772) * uint128(_774) / uint128(_773) < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
                  else:
                      if mem[_787] < cd[(cd[(cd('cd', 164).length + (32 * idx) + 36)] + cd('cd', 164).length + 68)]:
                          revert with 0, 'remainingMakerAmount < amount'
      idx = idx + 1
      continue 
  require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 35
  require cd[(cd('cd', 164) + 4)] <= 18446744073709551615
  require cd('cd', 164) + 36 <=ΓÇ▓ calldata.size - (192 * cd[(cd('cd', 164) + 4)])
  require 0 < cd[(cd('cd', 164) + 4)]
  require cd[(cd('cd', 164) + 164)] == cd[(cd('cd', 164) + 164)] % 16777216
  require cd[(cd('cd', 164) + 36)] == addr(cd[(cd('cd', 164) + 36)])
  if not cd[(cd('cd', 164) + 164)] % 16777216:
      require cd[(cd('cd', 164) + 68)] == bool(cd[(cd('cd', 164) + 68)])
      require ext_code.size(addr(cd[(cd('cd', 164) + 36)]))
      static call addr(cd[(cd('cd', 164) + 36)]).getReserves() with:
              gas gas_remaining wei
      mem[mem[64] len 96] = ext_call.return_data[0 len 96]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      _420 = mem[64]
      mem[64] = mem[64] + ceil32(return_data.size)
      require return_data.size >=ΓÇ▓ 96
      _427 = mem[_420]
      _428 = mem[_420 + 32]
      require mem[_420 + 64] == mem[_420 + 92 len 4]
      if cd[(cd('cd', 164) + 68)]:
          require (997 * mem[_420 + 32]) - (997 * cd[(cd('cd', 164) + 100)])
          require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 35
          require cd[(cd('cd', 164) + 4)] <= 18446744073709551615
          require cd('cd', 164) + 36 <=ΓÇ▓ calldata.size - (192 * cd[(cd('cd', 164) + 4)])
          require 1 < cd[(cd('cd', 164) + 4)]
          require cd[(cd('cd', 164) + 356)] == cd[(cd('cd', 164) + 356)] % 16777216
          require cd[(cd('cd', 164) + 228)] == addr(cd[(cd('cd', 164) + 228)])
          if not cd[(cd('cd', 164) + 356)] % 16777216:
              require cd[(cd('cd', 164) + 260)] == bool(cd[(cd('cd', 164) + 260)])
              require ext_code.size(addr(cd[(cd('cd', 164) + 228)]))
              static call addr(cd[(cd('cd', 164) + 228)]).getReserves() with:
                      gas gas_remaining wei
              mem[mem[64] len 96] = ext_call.return_data[0 len 96]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _513 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 96
              require mem[_513 + 64] == mem[_513 + 92 len 4]
              if cd[(cd('cd', 164) + 260)]:
                  require (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_513])
                  if uint128(997 * mem[_513 + 32] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_513])) <= uint128((1000 * _427 * cd[(cd('cd', 164) + 100)] / (997 * _428) - (997 * cd[(cd('cd', 164) + 100)])) + 1):
                      revert with 0, 'amountIn < amountOut'
                  uint128(stor7.field_0) = uint128((1000 * _427 * cd[(cd('cd', 164) + 100)] / (997 * _428) - (997 * cd[(cd('cd', 164) + 100)])) + 1)
                  uint128(stor7.field_128) = 0
                  uint128(stor7.field_128) = uint128(997 * mem[_513 + 32] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_513]))
                  uint8(stor2.field_0) = 1
                  Mask(88, 0, stor2.field_8) = 0
                  mem[mem[64] + 36] = bool(cd[4])
                  mem[mem[64] + 68] = cd[36]
                  if cd[4]:
                      mem[mem[64] + 100] = 4295128740
                      mem[mem[64] + 132] = 160
                      mem[mem[64] + 164] = ('cd', 196).length
                      mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                      mem[mem[64] + ('cd', 196).length + 196] = 0
                      require ext_code.size(addr(cd))
                      call addr(cd).0x128acb08 with:
                           gas gas_remaining wei
                          args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                      mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 64
                      Mask(96, 0, stor2.field_0) = 0
                      mem[mem[64] + 4] = this.address
                      require ext_code.size(addr(cd))
                      static call addr(cd).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(this.address)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _699 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      call cdaddress to, uint256 tokens) with:
                           gas gas_remaining wei
                          args addr(stor2.field_0), mem[_699]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if cd * mem[_699] <= 10000 * block.gasprice:
                          revert with 0, 'earned.sub(gasUser) le zero'
                      if call.value:
                          if (cd * mem[_699] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                              call block.coinbase with:
                                 value (cd * mem[_699] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                                   gas gas_remaining wei
                          else:
                              call block.coinbase with:
                                 value eth.balance(this.address) wei
                                   gas gas_remaining wei
                  else:
                      mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                      mem[mem[64] + 132] = 160
                      mem[mem[64] + 164] = ('cd', 196).length
                      mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                      mem[mem[64] + ('cd', 196).length + 196] = 0
                      require ext_code.size(addr(cd))
                      call addr(cd).0x128acb08 with:
                           gas gas_remaining wei
                          args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                      mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 64
                      Mask(96, 0, stor2.field_0) = 0
                      mem[mem[64] + 4] = this.address
                      require ext_code.size(addr(cd))
                      static call addr(cd).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(this.address)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _700 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      call cdaddress to, uint256 tokens) with:
                           gas gas_remaining wei
                          args addr(stor2.field_0), mem[_700]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if cd * mem[_700] <= 10000 * block.gasprice:
                          revert with 0, 'earned.sub(gasUser) le zero'
                      if call.value:
                          if (cd * mem[_700] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                              call block.coinbase with:
                                 value (cd * mem[_700] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                                   gas gas_remaining wei
                          else:
                              call block.coinbase with:
                                 value eth.balance(this.address) wei
                                   gas gas_remaining wei
              else:
                  require (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_513 + 32])
                  if uint128(997 * mem[_513] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_513 + 32])) <= uint128((1000 * _427 * cd[(cd('cd', 164) + 100)] / (997 * _428) - (997 * cd[(cd('cd', 164) + 100)])) + 1):
                      revert with 0, 'amountIn < amountOut'
                  uint128(stor7.field_0) = uint128((1000 * _427 * cd[(cd('cd', 164) + 100)] / (997 * _428) - (997 * cd[(cd('cd', 164) + 100)])) + 1)
                  uint128(stor7.field_128) = 0
                  uint128(stor7.field_128) = uint128(997 * mem[_513] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_513 + 32]))
                  uint8(stor2.field_0) = 1
                  Mask(88, 0, stor2.field_8) = 0
                  mem[mem[64] + 36] = bool(cd[4])
                  mem[mem[64] + 68] = cd[36]
                  if cd[4]:
                      mem[mem[64] + 100] = 4295128740
                      mem[mem[64] + 132] = 160
                      mem[mem[64] + 164] = ('cd', 196).length
                      mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                      mem[mem[64] + ('cd', 196).length + 196] = 0
                      require ext_code.size(addr(cd))
                      call addr(cd).0x128acb08 with:
                           gas gas_remaining wei
                          args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                      mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 64
                      Mask(96, 0, stor2.field_0) = 0
                      mem[mem[64] + 4] = this.address
                      require ext_code.size(addr(cd))
                      static call addr(cd).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(this.address)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _701 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      call cdaddress to, uint256 tokens) with:
                           gas gas_remaining wei
                          args addr(stor2.field_0), mem[_701]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if cd * mem[_701] <= 10000 * block.gasprice:
                          revert with 0, 'earned.sub(gasUser) le zero'
                      if call.value:
                          if (cd * mem[_701] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                              call block.coinbase with:
                                 value (cd * mem[_701] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                                   gas gas_remaining wei
                          else:
                              call block.coinbase with:
                                 value eth.balance(this.address) wei
                                   gas gas_remaining wei
                  else:
                      mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                      mem[mem[64] + 132] = 160
                      mem[mem[64] + 164] = ('cd', 196).length
                      mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                      mem[mem[64] + ('cd', 196).length + 196] = 0
                      require ext_code.size(addr(cd))
                      call addr(cd).0x128acb08 with:
                           gas gas_remaining wei
                          args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                      mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 64
                      Mask(96, 0, stor2.field_0) = 0
                      mem[mem[64] + 4] = this.address
                      require ext_code.size(addr(cd))
                      static call addr(cd).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(this.address)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _702 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      call cdaddress to, uint256 tokens) with:
                           gas gas_remaining wei
                          args addr(stor2.field_0), mem[_702]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if cd * mem[_702] <= 10000 * block.gasprice:
                          revert with 0, 'earned.sub(gasUser) le zero'
                      if call.value:
                          if (cd * mem[_702] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                              call block.coinbase with:
                                 value (cd * mem[_702] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                                   gas gas_remaining wei
                          else:
                              call block.coinbase with:
                                 value eth.balance(this.address) wei
                                   gas gas_remaining wei
          else:
              mem[mem[64] + 4] = addr(cd[(cd('cd', 164) + 228)])
              require cd[(cd('cd', 164) + 260)] == bool(cd[(cd('cd', 164) + 260)])
              mem[mem[64] + 36] = bool(cd[(cd('cd', 164) + 260)])
              mem[mem[64] + 68] = cd[(cd('cd', 164) + 292)]
              require cd[(cd('cd', 164) + 324)] == ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
              mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
              require cd[(cd('cd', 164) + 356)] == cd[(cd('cd', 164) + 356)] % 16777216
              mem[mem[64] + 132] = cd[(cd('cd', 164) + 356)] % 16777216
              require cd[(cd('cd', 164) + 388)] == addr(cd[(cd('cd', 164) + 388)])
              mem[mem[64] + 164] = addr(cd[(cd('cd', 164) + 388)])
              require ext_code.size(stor3)
              static call stor3.0x4aeccb60 with:
                      gas gas_remaining wei
                     args addr(cd[(cd('cd', 164) + 228)]), bool(cd[(cd('cd', 164) + 260)]), cd[(cd('cd', 164) + 292)], ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164)))))), cd[(cd('cd', 164) + 356)] << 232, addr(cd[(cd('cd', 164) + 388)])
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _529 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              if mem[_529 + 16 len 16] <= uint128((1000 * _427 * cd[(cd('cd', 164) + 100)] / (997 * _428) - (997 * cd[(cd('cd', 164) + 100)])) + 1):
                  revert with 0, 'amountIn < amountOut'
              uint128(stor7.field_0) = uint128((1000 * _427 * cd[(cd('cd', 164) + 100)] / (997 * _428) - (997 * cd[(cd('cd', 164) + 100)])) + 1)
              uint128(stor7.field_128) = 0
              uint128(stor7.field_128) = mem[_529 + 16 len 16]
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = bool(cd[4])
              mem[mem[64] + 68] = cd[36]
              if cd[4]:
                  mem[mem[64] + 100] = 4295128740
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _697 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_697]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_697] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_697] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_697] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _698 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_698]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_698] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_698] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_698] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
      else:
          require (997 * mem[_420]) - (997 * cd[(cd('cd', 164) + 100)])
          require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 35
          require cd[(cd('cd', 164) + 4)] <= 18446744073709551615
          require cd('cd', 164) + 36 <=ΓÇ▓ calldata.size - (192 * cd[(cd('cd', 164) + 4)])
          require 1 < cd[(cd('cd', 164) + 4)]
          require cd[(cd('cd', 164) + 356)] == cd[(cd('cd', 164) + 356)] % 16777216
          require cd[(cd('cd', 164) + 228)] == addr(cd[(cd('cd', 164) + 228)])
          if not cd[(cd('cd', 164) + 356)] % 16777216:
              require cd[(cd('cd', 164) + 260)] == bool(cd[(cd('cd', 164) + 260)])
              require ext_code.size(addr(cd[(cd('cd', 164) + 228)]))
              static call addr(cd[(cd('cd', 164) + 228)]).getReserves() with:
                      gas gas_remaining wei
              mem[mem[64] len 96] = ext_call.return_data[0 len 96]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _514 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 96
              require mem[_514 + 64] == mem[_514 + 92 len 4]
              if cd[(cd('cd', 164) + 260)]:
                  require (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_514])
                  if uint128(997 * mem[_514 + 32] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_514])) <= uint128((1000 * _428 * cd[(cd('cd', 164) + 100)] / (997 * _427) - (997 * cd[(cd('cd', 164) + 100)])) + 1):
                      revert with 0, 'amountIn < amountOut'
                  uint128(stor7.field_0) = uint128((1000 * _428 * cd[(cd('cd', 164) + 100)] / (997 * _427) - (997 * cd[(cd('cd', 164) + 100)])) + 1)
                  uint128(stor7.field_128) = 0
                  uint128(stor7.field_128) = uint128(997 * mem[_514 + 32] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_514]))
                  uint8(stor2.field_0) = 1
                  Mask(88, 0, stor2.field_8) = 0
                  mem[mem[64] + 36] = bool(cd[4])
                  mem[mem[64] + 68] = cd[36]
                  if cd[4]:
                      mem[mem[64] + 100] = 4295128740
                      mem[mem[64] + 132] = 160
                      mem[mem[64] + 164] = ('cd', 196).length
                      mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                      mem[mem[64] + ('cd', 196).length + 196] = 0
                      require ext_code.size(addr(cd))
                      call addr(cd).0x128acb08 with:
                           gas gas_remaining wei
                          args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                      mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 64
                      Mask(96, 0, stor2.field_0) = 0
                      mem[mem[64] + 4] = this.address
                      require ext_code.size(addr(cd))
                      static call addr(cd).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(this.address)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _705 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      call cdaddress to, uint256 tokens) with:
                           gas gas_remaining wei
                          args addr(stor2.field_0), mem[_705]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if cd * mem[_705] <= 10000 * block.gasprice:
                          revert with 0, 'earned.sub(gasUser) le zero'
                      if call.value:
                          if (cd * mem[_705] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                              call block.coinbase with:
                                 value (cd * mem[_705] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                                   gas gas_remaining wei
                          else:
                              call block.coinbase with:
                                 value eth.balance(this.address) wei
                                   gas gas_remaining wei
                  else:
                      mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                      mem[mem[64] + 132] = 160
                      mem[mem[64] + 164] = ('cd', 196).length
                      mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                      mem[mem[64] + ('cd', 196).length + 196] = 0
                      require ext_code.size(addr(cd))
                      call addr(cd).0x128acb08 with:
                           gas gas_remaining wei
                          args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                      mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 64
                      Mask(96, 0, stor2.field_0) = 0
                      mem[mem[64] + 4] = this.address
                      require ext_code.size(addr(cd))
                      static call addr(cd).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(this.address)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _706 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      call cdaddress to, uint256 tokens) with:
                           gas gas_remaining wei
                          args addr(stor2.field_0), mem[_706]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if cd * mem[_706] <= 10000 * block.gasprice:
                          revert with 0, 'earned.sub(gasUser) le zero'
                      if call.value:
                          if (cd * mem[_706] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                              call block.coinbase with:
                                 value (cd * mem[_706] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                                   gas gas_remaining wei
                          else:
                              call block.coinbase with:
                                 value eth.balance(this.address) wei
                                   gas gas_remaining wei
              else:
                  require (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_514 + 32])
                  if uint128(997 * mem[_514] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_514 + 32])) <= uint128((1000 * _428 * cd[(cd('cd', 164) + 100)] / (997 * _427) - (997 * cd[(cd('cd', 164) + 100)])) + 1):
                      revert with 0, 'amountIn < amountOut'
                  uint128(stor7.field_0) = uint128((1000 * _428 * cd[(cd('cd', 164) + 100)] / (997 * _427) - (997 * cd[(cd('cd', 164) + 100)])) + 1)
                  uint128(stor7.field_128) = 0
                  uint128(stor7.field_128) = uint128(997 * mem[_514] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_514 + 32]))
                  uint8(stor2.field_0) = 1
                  Mask(88, 0, stor2.field_8) = 0
                  mem[mem[64] + 36] = bool(cd[4])
                  mem[mem[64] + 68] = cd[36]
                  if cd[4]:
                      mem[mem[64] + 100] = 4295128740
                      mem[mem[64] + 132] = 160
                      mem[mem[64] + 164] = ('cd', 196).length
                      mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                      mem[mem[64] + ('cd', 196).length + 196] = 0
                      require ext_code.size(addr(cd))
                      call addr(cd).0x128acb08 with:
                           gas gas_remaining wei
                          args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                      mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 64
                      Mask(96, 0, stor2.field_0) = 0
                      mem[mem[64] + 4] = this.address
                      require ext_code.size(addr(cd))
                      static call addr(cd).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(this.address)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _707 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      call cdaddress to, uint256 tokens) with:
                           gas gas_remaining wei
                          args addr(stor2.field_0), mem[_707]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if cd * mem[_707] <= 10000 * block.gasprice:
                          revert with 0, 'earned.sub(gasUser) le zero'
                      if call.value:
                          if (cd * mem[_707] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                              call block.coinbase with:
                                 value (cd * mem[_707] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                                   gas gas_remaining wei
                          else:
                              call block.coinbase with:
                                 value eth.balance(this.address) wei
                                   gas gas_remaining wei
                  else:
                      mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                      mem[mem[64] + 132] = 160
                      mem[mem[64] + 164] = ('cd', 196).length
                      mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                      mem[mem[64] + ('cd', 196).length + 196] = 0
                      require ext_code.size(addr(cd))
                      call addr(cd).0x128acb08 with:
                           gas gas_remaining wei
                          args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                      mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 64
                      Mask(96, 0, stor2.field_0) = 0
                      mem[mem[64] + 4] = this.address
                      require ext_code.size(addr(cd))
                      static call addr(cd).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(this.address)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _708 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      call cdaddress to, uint256 tokens) with:
                           gas gas_remaining wei
                          args addr(stor2.field_0), mem[_708]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if cd * mem[_708] <= 10000 * block.gasprice:
                          revert with 0, 'earned.sub(gasUser) le zero'
                      if call.value:
                          if (cd * mem[_708] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                              call block.coinbase with:
                                 value (cd * mem[_708] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                                   gas gas_remaining wei
                          else:
                              call block.coinbase with:
                                 value eth.balance(this.address) wei
                                   gas gas_remaining wei
          else:
              mem[mem[64] + 4] = addr(cd[(cd('cd', 164) + 228)])
              require cd[(cd('cd', 164) + 260)] == bool(cd[(cd('cd', 164) + 260)])
              mem[mem[64] + 36] = bool(cd[(cd('cd', 164) + 260)])
              mem[mem[64] + 68] = cd[(cd('cd', 164) + 292)]
              require cd[(cd('cd', 164) + 324)] == ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
              mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
              require cd[(cd('cd', 164) + 356)] == cd[(cd('cd', 164) + 356)] % 16777216
              mem[mem[64] + 132] = cd[(cd('cd', 164) + 356)] % 16777216
              require cd[(cd('cd', 164) + 388)] == addr(cd[(cd('cd', 164) + 388)])
              mem[mem[64] + 164] = addr(cd[(cd('cd', 164) + 388)])
              require ext_code.size(stor3)
              static call stor3.0x4aeccb60 with:
                      gas gas_remaining wei
                     args addr(cd[(cd('cd', 164) + 228)]), bool(cd[(cd('cd', 164) + 260)]), cd[(cd('cd', 164) + 292)], ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164)))))), cd[(cd('cd', 164) + 356)] << 232, addr(cd[(cd('cd', 164) + 388)])
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _530 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              if mem[_530 + 16 len 16] <= uint128((1000 * _428 * cd[(cd('cd', 164) + 100)] / (997 * _427) - (997 * cd[(cd('cd', 164) + 100)])) + 1):
                  revert with 0, 'amountIn < amountOut'
              uint128(stor7.field_0) = uint128((1000 * _428 * cd[(cd('cd', 164) + 100)] / (997 * _427) - (997 * cd[(cd('cd', 164) + 100)])) + 1)
              uint128(stor7.field_128) = 0
              uint128(stor7.field_128) = mem[_530 + 16 len 16]
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = bool(cd[4])
              mem[mem[64] + 68] = cd[36]
              if cd[4]:
                  mem[mem[64] + 100] = 4295128740
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _703 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_703]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_703] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_703] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_703] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _704 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_704]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_704] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_704] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_704] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
  else:
      mem[mem[64] + 4] = addr(cd[(cd('cd', 164) + 36)])
      require cd[(cd('cd', 164) + 68)] == bool(cd[(cd('cd', 164) + 68)])
      mem[mem[64] + 36] = bool(cd[(cd('cd', 164) + 68)])
      mem[mem[64] + 68] = cd[(cd('cd', 164) + 100)]
      require cd[(cd('cd', 164) + 132)] == ('signextend', 2, ('cd', ('add', 132, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
      mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 132, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
      require cd[(cd('cd', 164) + 164)] == cd[(cd('cd', 164) + 164)] % 16777216
      mem[mem[64] + 132] = cd[(cd('cd', 164) + 164)] % 16777216
      require cd[(cd('cd', 164) + 196)] == addr(cd[(cd('cd', 164) + 196)])
      mem[mem[64] + 164] = addr(cd[(cd('cd', 164) + 196)])
      require ext_code.size(stor3)
      static call stor3.0x4aeccb60 with:
              gas gas_remaining wei
             args addr(cd[(cd('cd', 164) + 36)]), bool(cd[(cd('cd', 164) + 68)]), cd[(cd('cd', 164) + 100)], ('signextend', 2, ('cd', ('add', 132, ('cd', 164), ('cd', ('add', 36, ('cd', 164)))))), cd[(cd('cd', 164) + 164)] << 232, addr(cd[(cd('cd', 164) + 196)])
      mem[mem[64]] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      _432 = mem[64]
      mem[64] = mem[64] + ceil32(return_data.size)
      require return_data.size >=ΓÇ▓ 32
      _436 = mem[_432]
      require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 35
      require cd[(cd('cd', 164) + 4)] <= 18446744073709551615
      require cd('cd', 164) + 36 <=ΓÇ▓ calldata.size - (192 * cd[(cd('cd', 164) + 4)])
      require 1 < cd[(cd('cd', 164) + 4)]
      require cd[(cd('cd', 164) + 356)] == cd[(cd('cd', 164) + 356)] % 16777216
      require cd[(cd('cd', 164) + 228)] == addr(cd[(cd('cd', 164) + 228)])
      if not cd[(cd('cd', 164) + 356)] % 16777216:
          require cd[(cd('cd', 164) + 260)] == bool(cd[(cd('cd', 164) + 260)])
          require ext_code.size(addr(cd[(cd('cd', 164) + 228)]))
          static call addr(cd[(cd('cd', 164) + 228)]).getReserves() with:
                  gas gas_remaining wei
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _512 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          require mem[_512 + 64] == mem[_512 + 92 len 4]
          if cd[(cd('cd', 164) + 260)]:
              require (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_512])
              if uint128(997 * mem[_512 + 32] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_512])) <= uint128(_436):
                  revert with 0, 'amountIn < amountOut'
              uint128(stor7.field_0) = uint128(_436)
              uint128(stor7.field_128) = 0
              uint128(stor7.field_128) = uint128(997 * mem[_512 + 32] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_512]))
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = bool(cd[4])
              mem[mem[64] + 68] = cd[36]
              if cd[4]:
                  mem[mem[64] + 100] = 4295128740
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _693 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_693]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_693] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_693] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_693] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _694 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_694]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_694] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_694] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_694] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
          else:
              require (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_512 + 32])
              if uint128(997 * mem[_512] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_512 + 32])) <= uint128(_436):
                  revert with 0, 'amountIn < amountOut'
              uint128(stor7.field_0) = uint128(_436)
              uint128(stor7.field_128) = 0
              uint128(stor7.field_128) = uint128(997 * mem[_512] * cd[(cd('cd', 164) + 292)] / (997 * cd[(cd('cd', 164) + 292)]) + (1000 * mem[_512 + 32]))
              uint8(stor2.field_0) = 1
              Mask(88, 0, stor2.field_8) = 0
              mem[mem[64] + 36] = bool(cd[4])
              mem[mem[64] + 68] = cd[36]
              if cd[4]:
                  mem[mem[64] + 100] = 4295128740
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _695 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_695]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_695] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_695] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_695] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
              else:
                  mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[mem[64] + 132] = 160
                  mem[mem[64] + 164] = ('cd', 196).length
                  mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
                  mem[mem[64] + ('cd', 196).length + 196] = 0
                  require ext_code.size(addr(cd))
                  call addr(cd).0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
                  mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 64
                  Mask(96, 0, stor2.field_0) = 0
                  mem[mem[64] + 4] = this.address
                  require ext_code.size(addr(cd))
                  static call addr(cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _696 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  call cdaddress to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(stor2.field_0), mem[_696]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if cd * mem[_696] <= 10000 * block.gasprice:
                      revert with 0, 'earned.sub(gasUser) le zero'
                  if call.value:
                      if (cd * mem[_696] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                          call block.coinbase with:
                             value (cd * mem[_696] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                               gas gas_remaining wei
                      else:
                          call block.coinbase with:
                             value eth.balance(this.address) wei
                               gas gas_remaining wei
      else:
          mem[mem[64] + 4] = addr(cd[(cd('cd', 164) + 228)])
          require cd[(cd('cd', 164) + 260)] == bool(cd[(cd('cd', 164) + 260)])
          mem[mem[64] + 36] = bool(cd[(cd('cd', 164) + 260)])
          mem[mem[64] + 68] = cd[(cd('cd', 164) + 292)]
          require cd[(cd('cd', 164) + 324)] == ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
          mem[mem[64] + 100] = ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164))))))
          require cd[(cd('cd', 164) + 356)] == cd[(cd('cd', 164) + 356)] % 16777216
          mem[mem[64] + 132] = cd[(cd('cd', 164) + 356)] % 16777216
          require cd[(cd('cd', 164) + 388)] == addr(cd[(cd('cd', 164) + 388)])
          mem[mem[64] + 164] = addr(cd[(cd('cd', 164) + 388)])
          require ext_code.size(stor3)
          static call stor3.0x4aeccb60 with:
                  gas gas_remaining wei
                 args addr(cd[(cd('cd', 164) + 228)]), bool(cd[(cd('cd', 164) + 260)]), cd[(cd('cd', 164) + 292)], ('signextend', 2, ('cd', ('add', 324, ('cd', 164), ('cd', ('add', 36, ('cd', 164)))))), cd[(cd('cd', 164) + 356)] << 232, addr(cd[(cd('cd', 164) + 388)])
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _528 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          if mem[_528 + 16 len 16] <= uint128(_436):
              revert with 0, 'amountIn < amountOut'
          uint128(stor7.field_0) = uint128(_436)
          uint128(stor7.field_128) = 0
          uint128(stor7.field_128) = mem[_528 + 16 len 16]
          uint8(stor2.field_0) = 1
          Mask(88, 0, stor2.field_8) = 0
          mem[mem[64] + 36] = bool(cd[4])
          mem[mem[64] + 68] = cd[36]
          if cd[4]:
              mem[mem[64] + 100] = 4295128740
              mem[mem[64] + 132] = 160
              mem[mem[64] + 164] = ('cd', 196).length
              mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 196] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x128acb08 with:
                   gas gas_remaining wei
                  args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              mem[mem[64] len 64] = ext_call.return_data[0 len 64]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 64
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _691 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_691]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_691] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_691] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_691] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei
          else:
              mem[mem[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25
              mem[mem[64] + 132] = 160
              mem[mem[64] + 164] = ('cd', 196).length
              mem[mem[64] + 196 len ('cd', 196).length] = call.data[cd('cd', 196).length]
              mem[mem[64] + ('cd', 196).length + 196] = 0
              require ext_code.size(addr(cd))
              call addr(cd).0x128acb08 with:
                   gas gas_remaining wei
                  args addr(this.address), bool(cdArray(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
              mem[mem[64] len 64] = ext_call.return_data[0 len 64]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 64
              Mask(96, 0, stor2.field_0) = 0
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(cd))
              static call addr(cd).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(this.address)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _692 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              call cdaddress to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(stor2.field_0), mem[_692]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if cd * mem[_692] <= 10000 * block.gasprice:
                  revert with 0, 'earned.sub(gasUser) le zero'
              if call.value:
                  if (cd * mem[_692] * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
                      call block.coinbase with:
                         value (cd * mem[_692] * call.value) - (10000 * block.gasprice * call.value) / 100 wei
                           gas gas_remaining wei
                  else:
                      call block.coinbase with:
                         value eth.balance(this.address) wei
                           gas gas_remaining wei


