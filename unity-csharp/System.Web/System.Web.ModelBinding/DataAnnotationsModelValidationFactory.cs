using System.ComponentModel.DataAnnotations;

namespace System.Web.ModelBinding;

public delegate ModelValidator DataAnnotationsModelValidationFactory(ModelMetadata metadata, ModelBindingExecutionContext context, ValidationAttribute attribute);
