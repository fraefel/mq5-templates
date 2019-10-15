// Condition base v1.0

#ifndef ACondition_IMP
#define ACondition_IMP

#include <ICondition.mq5>
class ACondition : public ICondition
{
   int _references;
public:
   ACondition()
   {
      _references = 1;
   }
   
   virtual void AddRef()
   {
      ++_references;
   }

   virtual void Release()
   {
      --_references;
      if (_references == 0)
         delete &this;
   }
};

#endif