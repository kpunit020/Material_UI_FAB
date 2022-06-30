/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

export var sizeSpecs: {
  containerSize: SizeOptions,
  iconSize: SizeOptions,
  border: BorderOptions
}[] = [
  {
    containerSize: { width: '40vp', height: '40vp' },
    iconSize: { width: '24vp', height: '24vp' },
    border: { radius: '12vp' }
  },
  {
    containerSize: { width: '56vp', height: '56vp' },
    iconSize: { width: '24vp', height: '24vp' },
    border: { radius: '16vp' }
  },
  {
    containerSize: { width: '96vp', height: '96vp' },
    iconSize: { width: '36vp', height: '36vp' },
    border: { radius: '28vp' }
  },
]
