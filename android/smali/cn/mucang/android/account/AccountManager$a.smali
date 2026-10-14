.class Lcn/mucang/android/account/AccountManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/AccountManager;->z(Lcn/mucang/android/account/data/AuthUser;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/data/AuthUser;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/mucang/android/account/AccountManager;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/AccountManager;Lcn/mucang/android/account/data/AuthUser;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/AccountManager$a;->d:Lcn/mucang/android/account/AccountManager;

    iput-object p2, p0, Lcn/mucang/android/account/AccountManager$a;->a:Lcn/mucang/android/account/data/AuthUser;

    iput-boolean p3, p0, Lcn/mucang/android/account/AccountManager$a;->b:Z

    iput-object p4, p0, Lcn/mucang/android/account/AccountManager$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager$a;->d:Lcn/mucang/android/account/AccountManager;

    iget-object v1, p0, Lcn/mucang/android/account/AccountManager$a;->a:Lcn/mucang/android/account/data/AuthUser;

    iget-boolean v2, p0, Lcn/mucang/android/account/AccountManager$a;->b:Z

    iget-object v3, p0, Lcn/mucang/android/account/AccountManager$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/account/AccountManager;->z(Lcn/mucang/android/account/data/AuthUser;ZLjava/lang/String;)V

    return-void
.end method
