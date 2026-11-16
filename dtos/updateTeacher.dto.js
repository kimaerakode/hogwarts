//  DTO = Data Transfer Object

import * as z from "zod";

const UpdateTeacherDto = z.object({
  id: z.int(),
  name: z.string(),
  house: z.string(),
  //   house_id: z.int(),
});

export default UpdateTeacherDto;
