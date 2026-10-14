.class public Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$b;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->b:Z

    return p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$b;

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->c:I

    return v0
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->b:Z

    return-void
.end method
