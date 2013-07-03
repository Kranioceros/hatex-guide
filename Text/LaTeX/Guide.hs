
-- | The HaTeX User's Guide.
--
-- This module generates the HaTeX User's Guides from its
-- custom syntax to any available format.
-- This format is specified feeding the function 'writeGuide'
-- with a value of type 'Backend'.
--
-- More information about how this library works can be found
-- at the code repository on GitHub:
--
-- <https://github.com/Daniel-Diaz/hatex-guide>
--
module Text.LaTeX.Guide (
   -- * Backends
   Backend (..)
 , writeGuide
   -- * Info
 , sectionList
 , contributors
 , guideVersion
 ) where

import Text.LaTeX.Guide.Info
import Text.LaTeX.Guide.Aux (guideVersion)
import qualified Text.LaTeX.Guide.Backend.LaTeX as LaTeX
import qualified Text.LaTeX.Guide.Backend.Wiki  as Wiki

-- | Write in the current directory the LaTeX User's Guide using
--   a determined backend.
writeGuide :: Backend -> IO ()
writeGuide LaTeX = LaTeX.backend
writeGuide  Wiki =  Wiki.backend
