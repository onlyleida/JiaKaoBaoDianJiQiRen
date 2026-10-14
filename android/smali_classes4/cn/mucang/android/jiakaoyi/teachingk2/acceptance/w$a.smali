.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->e(Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceFunction$doSubmit$observer$1",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadCurrentMsg;",
        "onChanged",
        "",
        "t",
        "TeachingK2_release"
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
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroid/app/ProgressDialog;

.field final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic d:Landroidx/appcompat/app/d;

.field final synthetic e:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic h:J


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Landroid/app/ProgressDialog;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w<",
            "TT;>;",
            "Landroidx/appcompat/app/d;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
            "Ljava/lang/String;",
            "TT;J)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->b:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->d:Landroidx/appcompat/app/d;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->e:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->g:Ljava/lang/Object;

    iput-wide p8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->h:J

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;)V
    .locals 9

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->d:Landroidx/appcompat/app/d;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->e:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->f:Ljava/lang/String;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->g:Ljava/lang/Object;

    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;->a:Ljava/lang/String;

    const-string v0, "t.id"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->h:J

    invoke-static/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->a(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;J)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->b(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;->a(Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;)V

    return-void
.end method
