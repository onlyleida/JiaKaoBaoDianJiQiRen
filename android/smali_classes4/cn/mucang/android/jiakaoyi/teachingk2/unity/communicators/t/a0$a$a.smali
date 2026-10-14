.class Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/g/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a;->a(Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;Ljava/util/List;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a;Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;Ljava/util/List;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;->b:Ljava/util/List;

    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;->c:I

    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/g/f$a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic d(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;->a(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public c(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/g/f$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;->b:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b;

    invoke-direct {v4, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    iget v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;->c:I

    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;->d:Z

    invoke-virtual/range {v1 .. v6}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->h(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;IZ)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic e(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;->d(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Boolean;)V

    return-void
.end method
