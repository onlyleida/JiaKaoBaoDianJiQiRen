.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$DriveSettingItem;",
        "",
        "name",
        "",
        "config",
        "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;",
        "bold",
        "",
        "size",
        "",
        "(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V",
        "getBold",
        "()Z",
        "getConfig",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;",
        "getName",
        "()Ljava/lang/String;",
        "getSize",
        "()I",
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
.field private final a:Ljava/lang/String;

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

.field private final c:Z

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->c:Z

    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->d:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->c:Z

    return v0
.end method

.method public final b()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->d:I

    return v0
.end method
