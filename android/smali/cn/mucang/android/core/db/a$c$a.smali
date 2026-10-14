.class Lcn/mucang/android/core/db/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/db/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Field;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/db/a$c$a;->a:Ljava/lang/reflect/Field;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/core/db/a$c$a;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/db/a$c$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/db/a$c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/core/db/a$c$a;)Ljava/lang/reflect/Field;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/db/a$c$a;->a:Ljava/lang/reflect/Field;

    return-object p0
.end method
