.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeVisibleModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeVisibleModel;",
        "Ljava/io/Serializable;",
        "()V",
        "visible",
        "",
        "getVisible",
        "()Ljava/lang/Boolean;",
        "setVisible",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "teachbase_release"
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
.field private visible:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeVisibleModel;->visible:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final getVisible()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeVisibleModel;->visible:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setVisible(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeVisibleModel;->visible:Ljava/lang/Boolean;

    return-void
.end method
