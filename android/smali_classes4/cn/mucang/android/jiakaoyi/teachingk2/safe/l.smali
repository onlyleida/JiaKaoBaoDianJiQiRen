.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/safe/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/x/b;


# instance fields
.field public final synthetic a:B

.field public final synthetic b:B

.field public final synthetic c:B


# direct methods
.method public synthetic constructor <init>(BBB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/l;->a:B

    iput-byte p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/l;->b:B

    iput-byte p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/l;->c:B

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 3

    iget-byte v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/l;->a:B

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/l;->b:B

    iget-byte v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/l;->c:B

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;->a(BBB)[B

    move-result-object v0

    return-object v0
.end method
