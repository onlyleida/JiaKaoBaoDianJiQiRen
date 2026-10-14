.class public final Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/SundialCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$4",
        "Lcn/mucang/sundial/library/SundialCallBack;",
        "onResult",
        "",
        "success",
        "",
        "sundial_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcn/mucang/sundial/library/entity/ServerStudentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Z

.field final synthetic g:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/b/a;Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcn/mucang/sundial/library/entity/ServerStudentInfo;",
            ">;Z",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->a:Lkotlin/jvm/b/a;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->d:Z

    iput-object p5, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p6, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->f:Z

    iput-object p7, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->g:Lkotlin/jvm/b/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->b(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final b(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 1

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$xyToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$studentInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$next"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$back"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static/range {p0 .. p6}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->access$invokeSuspend$loginStudent(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->d:Z

    iget-object v4, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-boolean v5, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->f:Z

    iget-object v6, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->g:Lkotlin/jvm/b/a;

    iget-object v7, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->a:Lkotlin/jvm/b/a;

    new-instance p1, Lcn/mucang/jiakaoyi/sundial/client/i;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/jiakaoyi/sundial/client/i;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "interceptLogin\uff1a\u5b66\u5458\u7b7e\u9000\u5931\u8d25"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->a:Lkotlin/jvm/b/a;

    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
