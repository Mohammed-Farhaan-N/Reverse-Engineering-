.class final Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;
.super Lj$/util/stream/Nodes$SizedCollectorTask;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Sink$OfLong;


# instance fields
.field private final array:[J


# direct methods
.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/Node$-CC;[J)V
    .locals 1

    array-length v0, p3

    invoke-direct {p0, v0, p1, p2}, Lj$/util/stream/Nodes$SizedCollectorTask;-><init>(ILj$/util/Spliterator;Lj$/util/stream/Node$-CC;)V

    iput-object p3, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    return-void
.end method

.method constructor <init>(Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;Lj$/util/Spliterator;JJ)V
    .locals 9

    iget-object v0, p1, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lj$/util/stream/Nodes$SizedCollectorTask;-><init>(Lj$/util/stream/Nodes$SizedCollectorTask;Lj$/util/Spliterator;JJI)V

    iget-object p1, p1, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    iput-object p1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 3

    iget v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->index:I

    iget v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->fence:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->index:I

    aput-wide p1, v1, v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    iget p2, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->index:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic accept(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public final andThen(Lj$/util/function/LongConsumer;)Lj$/util/function/LongConsumer;
    .locals 1

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    new-instance v0, Lj$/util/function/LongConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lj$/util/function/LongConsumer$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/LongConsumer;Lj$/util/function/LongConsumer;)V

    return-object v0
.end method

.method final makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask;
    .locals 8

    .line 0
    new-instance v7, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;-><init>(Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;Lj$/util/Spliterator;JJ)V

    return-object v7
.end method
