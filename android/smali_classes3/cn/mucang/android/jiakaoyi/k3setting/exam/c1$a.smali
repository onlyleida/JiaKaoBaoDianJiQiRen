.class public final Lcn/mucang/android/jiakaoyi/k3setting/exam/c1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/exam/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/HpPreviewDialogFragment$Companion;",
        "",
        "()V",
        "show",
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/HpPreviewDialogFragment;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "route",
        "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
        "k3Data",
        "Lcn/mucang/android/jiakaoyi/mapcollect/render/IRenderData;",
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

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/c1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentManager;Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)Lcn/mucang/android/jiakaoyi/k3setting/exam/c1;
    .locals 1

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/c1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/c1;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/c1;->D(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V

    .line 3
    invoke-static {v0, p3}, Lcn/mucang/android/jiakaoyi/k3setting/exam/c1;->r(Lcn/mucang/android/jiakaoyi/k3setting/exam/c1;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V

    const-string p2, "HpPreviewDialogFragment"

    .line 4
    invoke-virtual {v0, p1, p2}, Lf/a/a/a/n/d/f;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method
