.class Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->e:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->e:Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->g(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->f(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->f(Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->d:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->d:Z

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->g(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->f(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->f(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->h(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    move-result-object v0

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->p(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->j(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->g(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method
