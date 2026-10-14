.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)I

    move-result p1

    if-ne p3, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;ILjava/lang/Runnable;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
