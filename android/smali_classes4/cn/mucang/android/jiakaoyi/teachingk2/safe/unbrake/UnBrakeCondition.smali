.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;",
        "Ljava/io/Serializable;",
        "()V",
        "condition",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;",
        "getCondition",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;",
        "setCondition",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;)V",
        "extra",
        "",
        "getExtra",
        "()Ljava/lang/Object;",
        "setExtra",
        "(Ljava/lang/Object;)V",
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
.field private condition:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

.field private extra:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->condition:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    return-void
.end method


# virtual methods
.method public final getCondition()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->condition:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    return-object v0
.end method

.method public final getExtra()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method public final setCondition(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->condition:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    return-void
.end method

.method public final setExtra(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->extra:Ljava/lang/Object;

    return-void
.end method
