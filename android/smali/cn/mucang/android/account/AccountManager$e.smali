.class Lcn/mucang/android/account/AccountManager$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field static final a:Lcn/mucang/android/account/AccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/account/AccountManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/account/AccountManager;-><init>(Lcn/mucang/android/account/AccountManager$a;)V

    sput-object v0, Lcn/mucang/android/account/AccountManager$e;->a:Lcn/mucang/android/account/AccountManager;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/account/AccountManager;->b(Lcn/mucang/android/account/AccountManager;)V

    return-void
.end method
