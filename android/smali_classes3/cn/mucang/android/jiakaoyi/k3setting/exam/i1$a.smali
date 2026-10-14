.class Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->x(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->y(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->A(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;)Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;

    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->z(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;->g(Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->B(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-void
.end method
