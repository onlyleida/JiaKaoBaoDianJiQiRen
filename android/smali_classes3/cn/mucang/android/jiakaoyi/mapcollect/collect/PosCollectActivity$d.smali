.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->o(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->n(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->n(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->a(F)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 3
    instance-of p1, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/p;

    if-eqz p1, :cond_0

    .line 4
    check-cast p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/p;

    invoke-virtual {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/p;->r(D)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p1, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;

    if-eqz p1, :cond_1

    .line 6
    check-cast p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;

    invoke-virtual {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->r(D)V

    :cond_1
    :goto_0
    return-void
.end method
