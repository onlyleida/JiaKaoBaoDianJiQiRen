.class Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m$a;
.super Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->j(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m$d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m$a;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->onTime:I

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "\u8bf7\u6b63\u786e\u586b\u5199\u65f6\u95f4"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
