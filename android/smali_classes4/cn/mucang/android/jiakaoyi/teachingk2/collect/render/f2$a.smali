.class Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iput p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "\u89e3\u6790\u51fa\u9519"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
