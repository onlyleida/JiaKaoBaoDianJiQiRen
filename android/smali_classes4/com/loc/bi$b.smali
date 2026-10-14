.class public final Lcom/loc/bi$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/net/HttpURLConnection;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/bi$b;->a:Ljava/net/HttpURLConnection;

    iget p1, p0, Lcom/loc/bi$b;->b:I

    iput p1, p0, Lcom/loc/bi$b;->b:I

    return-void
.end method
