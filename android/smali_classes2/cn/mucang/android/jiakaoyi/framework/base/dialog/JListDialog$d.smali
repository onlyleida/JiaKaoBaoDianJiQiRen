.class public Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$ListGravity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$ListGravity;->CENTER:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$ListGravity;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$ListGravity;

    return-void
.end method


# virtual methods
.method public a(Z)Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;->c:Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;->a:Ljava/lang/String;

    return-object p0
.end method
