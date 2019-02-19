require 'windows/api'
require 'windows/wide_string'
require 'tempfile'
require 'fileutils'
require 'pathname'
require 'ffi'

def to_byte_array(wstr)
  # WideString.size returns bytes, .length returns characters
  byte_len = (wstr.size * 2) + 2
  ptr = FFI::MemoryPointer.from_string(wstr)
  raw_ptr = FFI::Pointer.new(ptr.address)
  raw_ptr.read_array_of_type(FFI::TYPE_UINT8, :read_uint8, byte_len)
end

str_target = File.expand_path 'c:\jenky'
puts str_target.bytes.map { |byte| byte.to_s(16) }.join(' ')

wstr_target = str_target.encode(Encoding::UTF_16LE)
#wstr_target = WideString.new(str_target)# , Windows::Unicode::CP_ACP)
puts "target"
puts "  encoding=#{wstr_target.encoding}"
puts "  valid=#{wstr_target.valid_encoding?}"

i = 1
while i <= 50 do
  arr = to_byte_array(wstr_target)

#require 'debugger'; debugger

  puts arr.map {|byte| byte.chr }.join('  ')
  puts arr.map {|byte| byte < 0x10 ? "0#{byte.to_s(16)}" : byte.to_s(16) }.join(' ')
  i +=1
end
