
function irig_read_2_config(this_block)

  % Revision History:
  %
  %   21-Feb-2019  (16:20 hours):
  %     Original code was machine generated by Xilinx's System Generator after parsing
  %     /home/seba/Documents/Untitled_Folder/docs/IRIG/models/prototype/irig_read_2.v
  %
  %

  this_block.setTopLevelLanguage('Verilog');

  this_block.setEntityName('irig_read_2');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:
  %this_block.tagAsCombinational;

  this_block.addSimulinkInport('en');
  this_block.addSimulinkInport('irig_data');
  this_block.addSimulinkInport('cal');
  this_block.addSimulinkInport('hrd_rst');
  this_block.addSimulinkInport('ind');

  this_block.addSimulinkOutport('aux_out');
  this_block.addSimulinkOutport('state');
  this_block.addSimulinkOutport('write');
  this_block.addSimulinkOutport('dir');
  this_block.addSimulinkOutport('start');
  this_block.addSimulinkOutport('rst_reg');
  this_block.addSimulinkOutport('cont');
  this_block.addSimulinkOutport('in_frame');
  this_block.addSimulinkOutport('terminate');
  this_block.addSimulinkOutport('issue');

  aux_out_port = this_block.port('aux_out');
  aux_out_port.setType('UFix_4_0');
  state_port = this_block.port('state');
  state_port.setType('UFix_5_0');
  write_port = this_block.port('write');
  write_port.setType('UFix_1_0');
  write_port.useHDLVector(false);
  dir_port = this_block.port('dir');
  dir_port.setType('UFix_4_0');
  start_port = this_block.port('start');
  start_port.setType('UFix_1_0');
  start_port.useHDLVector(false);
  rst_reg_port = this_block.port('rst_reg');
  rst_reg_port.setType('UFix_1_0');
  rst_reg_port.useHDLVector(false);
  cont_port = this_block.port('cont');
  cont_port.setType('UFix_1_0');
  cont_port.useHDLVector(false);
  in_frame_port = this_block.port('in_frame');
  in_frame_port.setType('UFix_1_0');
  in_frame_port.useHDLVector(false);
  terminate_port = this_block.port('terminate');
  terminate_port.setType('UFix_1_0');
  terminate_port.useHDLVector(false);
  issue_port = this_block.port('issue');
  issue_port.setType('UFix_1_0');
  issue_port.useHDLVector(false);

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

    if (this_block.port('en').width ~= 1);
      this_block.setError('Input data type for port "en" must have width=1.');
    end

    this_block.port('en').useHDLVector(false);

    if (this_block.port('irig_data').width ~= 3);
      this_block.setError('Input data type for port "irig_data" must have width=3.');
    end

    if (this_block.port('cal').width ~= 1);
      this_block.setError('Input data type for port "cal" must have width=1.');
    end

    this_block.port('cal').useHDLVector(false);

    if (this_block.port('hrd_rst').width ~= 1);
      this_block.setError('Input data type for port "hrd_rst" must have width=1.');
    end

    this_block.port('hrd_rst').useHDLVector(false);

    if (this_block.port('ind').width ~= 8);
      this_block.setError('Input data type for port "ind" must have width=8.');
    end

  end  % if(inputTypesKnown)
  % -----------------------------

  % -----------------------------
   if (this_block.inputRatesKnown)
     setup_as_single_rate(this_block,'clk','ce')
   end  % if(inputRatesKnown)
  % -----------------------------

    % (!) Set the inout port rate to be the same as the first input 
    %     rate. Change the following code if this is untrue.
    uniqueInputRates = unique(this_block.getInputRates);

  % (!) Custimize the following generic settings as appropriate. If any settings depend
  %      on input types, make the settings in the "inputTypesKnown" code block.
  %      The addGeneric function takes  3 parameters, generic name, type and constant value.
  %      Supported types are boolean, real, integer and string.
  this_block.addGeneric('start_state','integer','15');
  this_block.addGeneric('a','integer','14');
  this_block.addGeneric('b','integer','12');
  this_block.addGeneric('c','integer','13');
  this_block.addGeneric('d','integer','29');
  this_block.addGeneric('e','integer','25');
  this_block.addGeneric('f','integer','9');
  this_block.addGeneric('g','integer','23');
  this_block.addGeneric('h','integer','21');
  this_block.addGeneric('i','integer','19');
  this_block.addGeneric('j','integer','18');
  this_block.addGeneric('k','integer','6');
  this_block.addGeneric('l','integer','2');
  this_block.addGeneric('m','integer','20');
  this_block.addGeneric('n','integer','22');
  this_block.addGeneric('o','integer','30');
  this_block.addGeneric('p','integer','16');
  this_block.addGeneric('q','integer','0');
  this_block.addGeneric('r','integer','4');
  this_block.addGeneric('s','integer','5');
  this_block.addGeneric('t','integer','17');
  this_block.addGeneric('u','integer','1');
  this_block.addGeneric('v','integer','8');
  this_block.addGeneric('x','integer','28');
  this_block.addGeneric('y','integer','11');
  this_block.addGeneric('z','integer','31');
  this_block.addGeneric('val','integer','3');

  % Add addtional source files as needed.
  %  |-------------
  %  | Add files in the order in which they should be compiled.
  %  | If two files "a.vhd" and "b.vhd" contain the entities
  %  | entity_a and entity_b, and entity_a contains a
  %  | component of type entity_b, the correct sequence of
  %  | addFile() calls would be:
  %  |    this_block.addFile('b.vhd');
  %  |    this_block.addFile('a.vhd');
  %  |-------------

  %    this_block.addFile('');
  %    this_block.addFile('');
  this_block.addFile('irig_read_2.v');

return;


% ------------------------------------------------------------

function setup_as_single_rate(block,clkname,cename) 
  inputRates = block.inputRates; 
  uniqueInputRates = unique(inputRates); 
  if (length(uniqueInputRates)==1 & uniqueInputRates(1)==Inf) 
    block.addError('The inputs to this block cannot all be constant.'); 
    return; 
  end 
  if (uniqueInputRates(end) == Inf) 
     hasConstantInput = true; 
     uniqueInputRates = uniqueInputRates(1:end-1); 
  end 
  if (length(uniqueInputRates) ~= 1) 
    block.addError('The inputs to this block must run at a single rate.'); 
    return; 
  end 
  theInputRate = uniqueInputRates(1); 
  for i = 1:block.numSimulinkOutports 
     block.outport(i).setRate(theInputRate); 
  end 
  block.addClkCEPair(clkname,cename,theInputRate); 
  return; 

% ------------------------------------------------------------

