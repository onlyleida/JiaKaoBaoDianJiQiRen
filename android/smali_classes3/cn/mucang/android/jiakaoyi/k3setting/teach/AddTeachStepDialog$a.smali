.class public final Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$Companion;",
        "",
        "()V",
        "show",
        "Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;",
        "fm",
        "Landroidx/fragment/app/FragmentManager;",
        "examSiteId",
        "",
        "successCallback",
        "Lkotlin/Function0;",
        "",
        "k3setting_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lkotlin/jvm/b/a;)Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;"
        }
    .end annotation

    const-string v0, "fm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "examSiteId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;

    invoke-direct {v0, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;-><init>(Ljava/lang/String;Lkotlin/jvm/b/a;)V

    const-string p2, "AddTeachStepDialog"

    .line 2
    invoke-virtual {v0, p1, p2}, Lf/a/a/a/n/d/f;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method
