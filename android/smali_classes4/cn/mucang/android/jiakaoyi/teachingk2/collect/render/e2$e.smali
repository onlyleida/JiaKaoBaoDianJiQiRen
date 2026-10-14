.class Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$e;
.super Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$f;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->v(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;->wheelDegree:I

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->v(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;->wheelDegree:I

    :goto_0
    return-void
.end method
