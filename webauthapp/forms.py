from django import forms
from .models import bookModel

class bookForm(forms.ModelForm):
    
    class Meta:
        model = bookModel
        
        fields = [
            "title",
            "author",
        ]
